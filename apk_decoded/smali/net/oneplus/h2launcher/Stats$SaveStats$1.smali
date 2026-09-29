.class Lnet/oneplus/h2launcher/Stats$SaveStats$1;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Stats$SaveStats;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

.field final synthetic val$componentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats$SaveStats;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/Stats$SaveStats;

    .prologue
    .line 471
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 474
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "Stats"

    const-string v1, "SaveStats onPreExecute onStatsChanged:"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Stats;->access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Stats$SaveStats;->intentStr:Ljava/lang/String;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget v3, v3, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/Stats$SaveStats;->id:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/Stats$SaveStats$1;->this$1:Lnet/oneplus/h2launcher/Stats$SaveStats;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Stats$SaveStats;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface/range {v0 .. v6}, Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;->onStatsAdded(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 478
    :cond_0
    return-void
.end method
