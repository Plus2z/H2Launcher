.class public Lnet/oneplus/h2launcher/MemoryTracker;
.super Landroid/app/Service;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;,
        Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    }
.end annotation


# static fields
.field public static final ACTION_START_TRACKING:Ljava/lang/String; = "com.android.launcher.action.START_TRACKING"

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_UPDATE:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field private static final UPDATE_RATE:J = 0x1388L


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field public final mData:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field public final mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPidsArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPidsArray:[I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Lnet/oneplus/h2launcher/MemoryTracker$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/MemoryTracker$1;-><init>(Lnet/oneplus/h2launcher/MemoryTracker;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;-><init>(Lnet/oneplus/h2launcher/MemoryTracker;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.launcher.action.START_TRACKING"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method


# virtual methods
.method public getMemInfo(I)Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    return-object v0
.end method

.method public getTrackedProcesses()[I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPidsArray:[I

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 166
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/MemoryTracker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    .line 169
    iget-object v5, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 170
    .local v4, "svcs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 171
    .local v3, "svc":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    sget-object v6, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discovered running service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v3, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 173
    invoke-virtual {p0, v6, v7, v8, v9}, Lnet/oneplus/h2launcher/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_0

    .line 178
    .end local v3    # "svc":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 180
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 181
    .local v0, "pname":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    sget-object v6, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discovered other running process: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v6, v0, v8, v9}, Lnet/oneplus/h2launcher/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_1

    .line 186
    .end local v0    # "pname":Ljava/lang/String;
    .end local v1    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x1

    .line 195
    sget-object v4, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received start id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p1, :cond_0

    .line 198
    const-string v4, "com.android.launcher.action.START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const-string v4, "pid"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, "pid":I
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "name":Ljava/lang/String;
    const-string v4, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 202
    .local v2, "start":J
    invoke-virtual {p0, v1, v0, v2, v3}, Lnet/oneplus/h2launcher/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    .line 206
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v2    # "start":J
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return v8
.end method

.method public startTrackingProcess(ILjava/lang/String;J)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # J

    .prologue
    .line 108
    iget-object v2, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    int-to-long v4, p1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 111
    .local v0, "lpid":Ljava/lang/Long;
    iget-object v1, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/MemoryTracker;->updatePidsArrayL()V

    .line 116
    iget-object v1, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v4, p1

    new-instance v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    invoke-direct {v3, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 117
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lpid":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method update()V
    .locals 12

    .prologue
    .line 133
    iget-object v7, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 134
    :try_start_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPidsArray:[I

    invoke-virtual {v6, v8}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 135
    .local v1, "dinfos":[Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 136
    aget-object v0, v1, v2

    .line 137
    .local v0, "dinfo":Landroid/os/Debug$MemoryInfo;
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_2

    .line 138
    sget-object v6, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: unknown process info received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_6

    .line 155
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 156
    .local v4, "pid":J
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 157
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/MemoryTracker;->updatePidsArrayL()V

    .line 154
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 141
    .end local v4    # "pid":J
    .restart local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 142
    .restart local v4    # "pid":J
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    .line 143
    .local v3, "info":Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    iget v6, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    add-int/lit8 v6, v6, 0x1

    iget-object v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v8

    rem-int/2addr v6, v8

    iput v6, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    .line 144
    iget-object v6, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pss:[J

    iget v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    aput-wide v10, v6, v8

    .line 145
    iget-object v6, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->uss:[J

    iget v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentUss:J

    aput-wide v10, v6, v8

    .line 146
    iget-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    iget-wide v10, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    iget-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    iput-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    .line 147
    :cond_3
    iget-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentUss:J

    iget-wide v10, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_4

    iget-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentUss:J

    iput-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    .line 149
    :cond_4
    iget-wide v8, v3, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_5

    .line 150
    sget-object v6, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has pss=0, it probably died"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 135
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 161
    .end local v0    # "dinfo":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "info":Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    .end local v4    # "pid":J
    :cond_6
    monitor-exit v7

    .line 162
    return-void

    .line 161
    .end local v1    # "dinfos":[Landroid/os/Debug$MemoryInfo;
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method updatePidsArrayL()V
    .locals 6

    .prologue
    .line 121
    iget-object v4, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "N":I
    new-array v4, v0, [I

    iput-object v4, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPidsArray:[I

    .line 123
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Now tracking processes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 125
    iget-object v4, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 126
    .local v2, "p":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/MemoryTracker;->mPidsArray:[I

    aput v2, v4, v1

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "p":I
    :cond_0
    sget-object v4, Lnet/oneplus/h2launcher/MemoryTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
