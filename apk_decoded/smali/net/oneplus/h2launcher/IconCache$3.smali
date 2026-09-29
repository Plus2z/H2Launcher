.class Lnet/oneplus/h2launcher/IconCache$3;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/IconCache;->preloadAllAssetPackTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/IconCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/IconCache;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 494
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 496
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/IconCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v3}, Lnet/oneplus/h2launcher/IconCache;->access$000(Lnet/oneplus/h2launcher/IconCache;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "currentAssetPackName":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/IconCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v3}, Lnet/oneplus/h2launcher/IconCache;->access$300(Lnet/oneplus/h2launcher/IconCache;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v0

    .line 500
    .local v0, "assetPackArray":[[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget-object v3, v0, v5

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 501
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    aget-object v4, v0, v5

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/IconCache;->access$400(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    aget-object v4, v0, v5

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/IconCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 504
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$3;->this$0:Lnet/oneplus/h2launcher/IconCache;

    aget-object v4, v0, v5

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/IconCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    :cond_1
    return-void
.end method
