.class Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;
.super Ljava/lang/Object;
.source "DynamicIconConfigCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DynamicIconConfigCache;->preloadAllAssetPackTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .prologue
    .line 258
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 260
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v3, v3, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "currentAssetPackName":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v3}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$200(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "assetPackArray":[[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget-object v3, v0, v5

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 265
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    aget-object v4, v0, v5

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method
