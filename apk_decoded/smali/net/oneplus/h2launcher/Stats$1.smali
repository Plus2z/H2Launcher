.class Lnet/oneplus/h2launcher/Stats$1;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Stats;->onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 199
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Stats$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 203
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 206
    .local v1, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->val$packageName:Ljava/lang/String;

    iget-object v3, v1, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v3, v1, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 207
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 213
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    .end local v1    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v2, v3, v4}, Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;->onStatsRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 217
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/Stats$1$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/Stats$1$1;-><init>(Lnet/oneplus/h2launcher/Stats$1;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method
