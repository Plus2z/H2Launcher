.class Lnet/oneplus/h2launcher/Stats$2;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Stats;->onShortcutRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;

.field final synthetic val$id:J

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 236
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$2;->this$0:Lnet/oneplus/h2launcher/Stats;

    iput-wide p2, p0, Lnet/oneplus/h2launcher/Stats$2;->val$id:J

    iput-object p4, p0, Lnet/oneplus/h2launcher/Stats$2;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 240
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$2;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$2;->this$0:Lnet/oneplus/h2launcher/Stats;

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

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 243
    .local v1, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-wide v2, p0, Lnet/oneplus/h2launcher/Stats$2;->val$id:J

    iget-wide v4, v1, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 249
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    .end local v1    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$2;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$2;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/Stats$2;->val$id:J

    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats$2;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v2, v4, v5, v3}, Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;->onStatsRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 253
    :cond_2
    return-void
.end method
