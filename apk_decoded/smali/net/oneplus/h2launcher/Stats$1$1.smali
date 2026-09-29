.class Lnet/oneplus/h2launcher/Stats$1$1;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Stats$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/Stats$1;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/Stats$1;

    .prologue
    .line 217
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$1$1;->this$1:Lnet/oneplus/h2launcher/Stats$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats$1$1;->this$1:Lnet/oneplus/h2launcher/Stats$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Stats;->access$300(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "global_search_apps"

    const-string v2, "package_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats$1$1;->this$1:Lnet/oneplus/h2launcher/Stats$1;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Stats$1;->val$packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats$1$1;->this$1:Lnet/oneplus/h2launcher/Stats$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Stats$1;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/Stats;->loadAppsHistory(Z)Z

    .line 225
    return-void
.end method
