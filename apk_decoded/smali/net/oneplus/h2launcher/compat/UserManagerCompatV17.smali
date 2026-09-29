.class public Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;
.super Lnet/oneplus/h2launcher/compat/UserManagerCompatV16;
.source "UserManagerCompatV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field protected mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompatV16;-><init>()V

    .line 39
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    .line 40
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 5

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v1, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    .line 67
    .local v0, "myUser":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 68
    .local v2, "serial":J
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v2, v3, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    .end local v0    # "myUser":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v2    # "serial":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J
    .locals 4
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 46
    .local v0, "serial":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    monitor-exit p0

    .line 49
    .end local v0    # "serial":Ljava/lang/Long;
    :goto_1
    return-wide v2

    .line 46
    .restart local v0    # "serial":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 48
    .end local v0    # "serial":Ljava/lang/Long;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    monitor-exit p0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
