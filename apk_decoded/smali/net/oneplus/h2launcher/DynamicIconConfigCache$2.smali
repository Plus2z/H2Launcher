.class Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;
.super Ljava/lang/Object;
.source "DynamicIconConfigCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DynamicIconConfigCache;->checkAndPreloadAllTask()V
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
    .line 247
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->preloadAllAssetPackTask()V

    .line 251
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const-class v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/AssetCache;->setPreloadCache(Ljava/lang/Class;Z)V

    .line 252
    return-void
.end method
