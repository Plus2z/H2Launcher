.class public abstract Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field private static sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static createShortcutInfoFromPinItemRequest(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;J)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
    .param p2, "acceptDelay"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getRequestType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 147
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 150
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->accept()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    new-instance v2, Lnet/oneplus/h2launcher/util/LooperExecuter;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/util/LooperExecuter;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;

    invoke-direct {v3, p2, p3, p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;-><init>(JLnet/oneplus/h2launcher/compat/PinItemRequestCompat;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/LooperExecuter;->execute(Ljava/lang/Runnable;)V

    .line 170
    :cond_2
    new-instance v0, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 171
    .local v0, "compat":Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    new-instance v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v1, v0, p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 173
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lnet/oneplus/h2launcher/Utilities;->createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    .line 80
    :cond_0
    :goto_0
    sget-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    monitor-exit v1

    return-object v0

    .line 72
    :cond_1
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v0, :cond_2

    .line 73
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVN;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :cond_2
    :try_start_1
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->sInstance:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;
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
.end method

.method public abstract getCustomShortcutActivityList(Lnet/oneplus/h2launcher/util/PackageUserKey;)Ljava/util/List;
    .param p1    # Lnet/oneplus/h2launcher/util/PackageUserKey;
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
.end method

.method public abstract isActivityEnabledForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
.end method

.method public isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 103
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 105
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isAppOnSdcard(Landroid/content/pm/PackageManager;Ljava/lang/String;ILnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4, p4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    .local v2, "isPrimaryUser":Z
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 120
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 124
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v3

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public abstract isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
.end method

.method public abstract isPackageSuspendedForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
.end method

.method public abstract removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
.end method

.method public abstract showAppDetailsForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract startActivityForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method
