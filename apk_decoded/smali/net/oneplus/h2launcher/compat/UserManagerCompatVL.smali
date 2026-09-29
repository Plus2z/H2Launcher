.class public Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;
.super Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;
.source "UserManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final USER_CREATION_TIME_KEY:Ljava/lang/String; = "user_creation_time_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 8

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v5, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    .line 55
    iget-object v5, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 56
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v4, :cond_0

    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 58
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 59
    .local v0, "serial":J
    invoke-static {v2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 60
    .local v3, "userCompat":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v6, v0, v1, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 61
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v0    # "serial":J
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "userCompat":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    return-void
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "unbadged"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 99
    .end local p1    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .restart local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserCreationTime(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J
    .locals 6
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 104
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 113
    :goto_0
    return-wide v2

    .line 107
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_creation_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    :cond_1
    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUsers:Lnet/oneplus/h2launcher/util/LongArrayMap;

    if-eqz v4, :cond_0

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    monitor-exit p0

    .line 86
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    :goto_0
    return-object v3

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-nez v2, :cond_1

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 75
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 81
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, "compatUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 84
    .local v1, "user":Landroid/os/UserHandle;
    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_2
    move-object v3, v0

    .line 86
    goto :goto_0
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
