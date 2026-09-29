.class Lnet/oneplus/h2launcher/IconCache$2;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/IconCache;->addPreloadAssetPackTask(Ljava/lang/String;)V
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
    .line 456
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$2;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$2;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 459
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$2;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$2;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/IconCache;->access$102(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 460
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$2;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->scheduleNext()V

    .line 462
    :cond_0
    return-void
.end method
