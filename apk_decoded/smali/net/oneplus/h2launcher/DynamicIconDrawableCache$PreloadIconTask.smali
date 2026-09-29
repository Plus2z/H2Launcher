.class Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;
.super Ljava/lang/Object;
.source "DynamicIconDrawableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DynamicIconDrawableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadIconTask"
.end annotation


# instance fields
.field private final mAssetPackName:Ljava/lang/String;

.field private final mResources:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/String;JLjava/util/HashSet;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p5, "resources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    .line 219
    iput-wide p3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mUserSerial:J

    .line 220
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mResources:Ljava/util/Stack;

    .line 221
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mResources:Ljava/util/Stack;

    invoke-virtual {v0, p5}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 226
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mResources:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 227
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mResources:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    .local v5, "resource":Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const-string v9, "none"

    iget-object v10, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 230
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v9}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 231
    .local v6, "resources":Landroid/content/res/Resources;
    const-string v9, "drawable"

    iget-object v10, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v10}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 232
    .local v4, "id":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v9}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    .end local v4    # "id":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 240
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 243
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 244
    .local v2, "data":[B
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "profileId"

    iget-wide v10, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mUserSerial:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v9, "componentName"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v9, "assetPackName"

    iget-object v10, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v9, "iconType"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v9, "icon"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 250
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v9}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 252
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->scheduleNext()V

    .line 256
    .end local v5    # "resource":Ljava/lang/String;
    :goto_1
    return-void

    .line 234
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "resource":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    iget-object v9, v9, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v10, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v3

    .line 235
    .local v3, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    if-eqz v3, :cond_0

    .line 236
    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v9}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$200(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 254
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    .end local v5    # "resource":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->scheduleNextTask()V

    goto :goto_1
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 260
    return-void
.end method

.method public scheduleNextTask()V
    .locals 8

    .prologue
    .line 263
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 265
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$302(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 266
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v2, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 270
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$302(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
