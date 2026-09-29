.class Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;
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
    name = "SerializedIconUpdateTask"
.end annotation


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsToUpdate:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mUpdatedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/IconCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconCache;
    .param p2, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p4, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p5, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .local p6, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 1563
    iput-wide p2, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 1564
    iput-object p4, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 1565
    iput-object p5, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 1566
    iput-object p6, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 1567
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1571
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1572
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 1573
    .local v1, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 1574
    .local v6, "cn":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    const-string v3, "none"

    invoke-virtual {v0, v1, v3, v10}, Lnet/oneplus/h2launcher/IconCache;->updateCacheAndGetContentValues(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v7

    .line 1575
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1576
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1577
    const-string v0, "lastUpdated"

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1578
    const-string v0, "version"

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1580
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$300(Lnet/oneplus/h2launcher/IconCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v4, "componentName = ? AND profileId = ? AND assetPackName = ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    iget-wide v8, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 1583
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    const/4 v8, 0x2

    const-string v9, "none"

    aput-object v9, v5, v8

    .line 1580
    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1586
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1588
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v0

    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v4, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v4, v4, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-wide v8, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 1589
    invoke-virtual {v4, v8, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    .line 1588
    invoke-virtual {v0, v3, v4}, Lnet/oneplus/h2launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1593
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 1617
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "cn":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1594
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1595
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 1596
    .restart local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1597
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    .line 1598
    iget-object v8, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    monitor-enter v8

    .line 1599
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    const-string v3, "none"

    iget-wide v4, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V

    .line 1600
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1604
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    goto :goto_0

    .line 1600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1606
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$500(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_5

    .line 1607
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0, v9}, Lnet/oneplus/h2launcher/IconCache;->access$502(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1609
    :cond_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->scheduleNextTask()V

    goto :goto_0

    .line 1612
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$500(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_7

    .line 1613
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0, v9}, Lnet/oneplus/h2launcher/IconCache;->access$502(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1615
    :cond_7
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->scheduleNextTask()V

    goto :goto_0
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 1620
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1621
    return-void
.end method

.method public scheduleNextTask()V
    .locals 8

    .prologue
    .line 1624
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1625
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1626
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/IconCache;->access$102(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1628
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->this$0:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/IconCache;->access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lnet/oneplus/h2launcher/IconCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1630
    :cond_2
    return-void
.end method
