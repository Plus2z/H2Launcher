.class Lnet/oneplus/h2launcher/IconCache$1;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/IconCache;->checkAndPreloadAllTask()V
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
    .line 183
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$1;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$1;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache;->preloadAllAssetPackTask()V

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$1;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$000(Lnet/oneplus/h2launcher/IconCache;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v0

    const-class v1, Lnet/oneplus/h2launcher/IconCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/AssetCache;->setPreloadCache(Ljava/lang/Class;Z)V

    .line 188
    return-void
.end method
