.class Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;
.super Ljava/lang/Object;
.source "DynamicIconDrawableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->preloadIcon(Ljava/util/HashSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

.field final synthetic val$assetPackName:Ljava/lang/String;

.field final synthetic val$resource:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .prologue
    .line 200
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    iput-object p2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->val$assetPackName:Ljava/lang/String;

    iput-object p3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->val$resource:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 203
    new-instance v1, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->val$assetPackName:Ljava/lang/String;

    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .line 204
    invoke-static {v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    iget-object v6, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->val$resource:Ljava/util/HashSet;

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;-><init>(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/String;JLjava/util/HashSet;)V

    .line 206
    .local v1, "task":Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;->this$0:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;->scheduleNextTask()V

    .line 208
    return-void
.end method
