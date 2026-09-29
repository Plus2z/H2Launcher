.class public Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;
.super Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            "Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 52
    return-void
.end method


# virtual methods
.method public addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 3
    .param p1, "callback"    # Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 88
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;-><init>(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 89
    .local v0, "wrappedCallback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 57
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 56
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0

    .line 61
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "compatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 64
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v4, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v4, v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCustomShortcutActivityList(Lnet/oneplus/h2launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 1
    .param p1, "packageUser"    # Lnet/oneplus/h2launcher/util/PackageUserKey;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isPackageSuspendedForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 4
    .param p1, "callback"    # Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "wrappedCallback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v3

    .line 99
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL$WrappedCallback;

    move-object v1, v0

    .line 100
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 104
    :cond_0
    return-void

    .line 100
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 70
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 71
    .local v0, "activity":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v1, v0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 74
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
