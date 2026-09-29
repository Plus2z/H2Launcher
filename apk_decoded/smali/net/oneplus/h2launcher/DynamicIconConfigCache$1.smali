.class Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;
.super Ljava/lang/Object;
.source "DynamicIconConfigCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DynamicIconConfigCache;->addPreloadAssetPackTask(Ljava/lang/String;)V
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
    .line 234
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$002(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 238
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->scheduleNext()V

    .line 240
    :cond_0
    return-void
.end method
