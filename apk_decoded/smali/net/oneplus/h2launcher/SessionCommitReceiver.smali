.class public Lnet/oneplus/h2launcher/SessionCommitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionCommitReceiver.java"


# static fields
.field public static final ADD_ICON_PREFERENCE_KEY:Ljava/lang/String; = "pref_add_icon_to_home"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-class v0, Lnet/oneplus/h2launcher/SessionCommitReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SessionCommitReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_add_icon_to_home"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-static {p1}, Lnet/oneplus/h2launcher/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    iget-object v4, p0, Lnet/oneplus/h2launcher/SessionCommitReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive: User has decided to not add icons on homescreen."

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v4, "android.content.pm.extra.SESSION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 34
    .local v1, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 35
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {v2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 37
    .local v3, "userHandleCompat":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    iget-object v4, p0, Lnet/oneplus/h2launcher/SessionCommitReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive: getAppPackageName is null."

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 44
    iget-object v4, p0, Lnet/oneplus/h2launcher/SessionCommitReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: Managed profile is handled using ManagedProfileHeuristic., UserHandleCompat.myUserHandle()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v4

    .line 51
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    :cond_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/SessionCommitReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive: no activity found"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    invoke-static {v4, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queueActivityInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    goto :goto_0
.end method
