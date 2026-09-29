.class Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadIconTask"
.end annotation


# instance fields
.field private final mApps:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssetPackName:Ljava/lang/String;

.field private mFinished:Z

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/IconCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/String;JLjava/util/HashMap;Ljava/util/Stack;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconCache;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1641
    .local p5, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p6, "apps":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1642
    iput-object p2, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    .line 1643
    iput-wide p3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mUserSerial:J

    .line 1644
    iput-object p5, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 1645
    iput-object p6, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mFinished:Z

    .line 1647
    return-void
.end method


# virtual methods
.method public hasPrioritySchedule()Z
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$500(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1702
    const/4 v0, 0x1

    .line 1704
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1651
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1652
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 1653
    .local v1, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1654
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1655
    iget-object v10, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    monitor-enter v10

    .line 1656
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mUserSerial:J

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V

    .line 1657
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->scheduleNext()V

    .line 1680
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 1657
    .restart local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1661
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mFinished:Z

    if-nez v0, :cond_4

    .line 1662
    const-string v0, "none"

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1663
    const/4 v9, 0x0

    .line 1664
    .local v9, "versionCode":I
    const-wide/16 v6, 0x0

    .line 1665
    .local v6, "lastUpdateTime":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1666
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1667
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1669
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1670
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "assetPackName"

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "version"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    const-string v0, "lastUpdated"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1673
    const-string v0, "profileId"

    iget-wide v4, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mUserSerial:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1674
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$300(Lnet/oneplus/h2launcher/IconCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ASSET_PACK_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1676
    .end local v6    # "lastUpdateTime":J
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "versionCode":I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->mFinished:Z

    .line 1678
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->scheduleNextTask()V

    goto :goto_0
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 1683
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->hasPrioritySchedule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/IconCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1686
    :cond_0
    return-void
.end method

.method public scheduleNextTask()V
    .locals 8

    .prologue
    .line 1689
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->hasPrioritySchedule()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1690
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/IconCache;->access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1691
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/IconCache;->access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1692
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/IconCache;->access$102(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1693
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v1, v1, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v2, Lnet/oneplus/h2launcher/IconCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1698
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/IconCache;->access$102(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
