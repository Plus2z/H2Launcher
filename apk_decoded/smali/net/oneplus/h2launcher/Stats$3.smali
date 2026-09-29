.class Lnet/oneplus/h2launcher/Stats$3;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Stats;->onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
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
    .line 266
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Stats$3;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 269
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->isPackageValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 273
    .local v3, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    iget-object v5, v3, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v5, v3, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 274
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 276
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Stats$3;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v4, v5, v6}, Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;->onStatsRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0

    .line 283
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    .end local v3    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 284
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 286
    .restart local v3    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    iget-object v5, v3, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v5, v3, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 287
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, v3, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "appList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 296
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 297
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$3;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Stats$3;->val$packageName:Ljava/lang/String;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Stats$3;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v4, v5, v6}, Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;->onStatsRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_1

    .line 304
    .end local v0    # "appList":Ljava/util/List;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    .end local v3    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_3
    return-void
.end method
