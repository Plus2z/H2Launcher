.class public Lnet/oneplus/h2launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;,
        Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final APPS_PENDING_INSTALL:Ljava/lang/String; = "apps_to_install"

.field private static final APP_SHORTCUT_TYPE_KEY:Ljava/lang/String; = "isAppShortcut"

.field private static final APP_WIDGET_TYPE_KEY:Ljava/lang/String; = "isAppWidget"

.field private static final DBG:Z = false

.field private static final DEEPSHORTCUT_TYPE_KEY:Ljava/lang/String; = "isDeepShortcut"

.field private static final FLAG_GET_ALL:I = 0xb

.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final ICON_RESOURCE_NAME_KEY:Ljava/lang/String; = "iconResource"

.field private static final ICON_RESOURCE_PACKAGE_NAME_KEY:Ljava/lang/String; = "iconResourcePackage"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "intent.launch"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final USER_HANDLE_KEY:Ljava/lang/String; = "userHandle"

.field private static mUseInstallQueue:Z

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->mUseInstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Lnet/oneplus/h2launcher/LauncherAppState;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/LauncherAppState;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->createShortcutInfo(Landroid/content/Intent;Lnet/oneplus/h2launcher/LauncherAppState;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private static addToInstallQueue(Landroid/content/SharedPreferences;Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;)V
    .locals 6
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "info"    # Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 94
    sget-object v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->encodeToString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const-string v3, "apps_to_install"

    const/4 v5, 0x0

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 98
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 99
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "apps_to_install"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v4

    .line 107
    return-void

    .line 101
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 106
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static convertToLauncherActivityIfPossible(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 5
    .param p0, "original"    # Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 698
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    .end local p0    # "original":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_0
    :goto_0
    return-object p0

    .line 702
    .restart local p0    # "original":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 703
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    iget-object v3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 709
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 711
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 716
    iget-object v3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 717
    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v1

    .line 718
    .local v1, "launcherInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    new-instance v3, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v3, v1, v4}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    move-object p0, v3

    goto :goto_0
.end method

.method private static createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string v2, "android.intent.extra.shortcut.INTENT"

    const-class v3, Landroid/content/Intent;

    invoke-static {p1, v2, v3}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const-class v3, Landroid/content/Intent$ShortcutIconResource;

    .line 200
    invoke-static {p1, v2, v3}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.shortcut.ICON"

    const-class v3, Landroid/graphics/Bitmap;

    .line 202
    invoke-static {p1, v2, v3}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    :cond_0
    const-string v2, "InstallShortcutReceiver"

    const-string v3, "Invalid install shortcut intent"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-object v1

    .line 208
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 209
    .local v0, "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v2, v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 210
    :cond_2
    const-string v2, "InstallShortcutReceiver"

    const-string v3, "Invalid install shortcut intent"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private static createShortcutInfo(Landroid/content/Intent;Lnet/oneplus/h2launcher/LauncherAppState;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 8
    .param p0, "data"    # Landroid/content/Intent;
    .param p1, "app"    # Lnet/oneplus/h2launcher/LauncherAppState;

    .prologue
    .line 722
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 723
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "name":Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 726
    .local v0, "bitmap":Landroid/os/Parcelable;
    if-nez v3, :cond_0

    .line 728
    const-string v5, "InstallShortcutReceiver"

    const-string v6, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v2, 0x0

    .line 756
    .end local v0    # "bitmap":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 732
    .restart local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    new-instance v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 736
    .local v2, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 738
    instance-of v5, v0, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 739
    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "bitmap":Landroid/os/Parcelable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 747
    :cond_1
    :goto_1
    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 748
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v5

    iget-object v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/AssetCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 751
    :cond_2
    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 752
    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 753
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v5

    iget-object v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 754
    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 755
    iput-object v3, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 741
    .restart local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_3
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 742
    .local v1, "extra":Landroid/os/Parcelable;
    instance-of v5, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_1

    .line 743
    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .end local v1    # "extra":Landroid/os/Parcelable;
    iput-object v1, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 744
    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 19
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    :try_start_0
    new-instance v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;Lnet/oneplus/h2launcher/InstallShortcutReceiver$1;)V

    .line 549
    .local v4, "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    const-string v14, "isAppShortcut"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 550
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v14

    iget-object v15, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    iget-object v0, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v16, v0

    .line 551
    invoke-virtual/range {v14 .. v16}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v11

    .line 552
    .local v11, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    if-nez v11, :cond_0

    const/4 v14, 0x0

    .line 604
    .end local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    .end local v11    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :goto_0
    return-object v14

    .line 552
    .restart local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    .restart local v11    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_0
    new-instance v14, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p1

    invoke-direct {v14, v11, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 597
    .end local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    .end local v11    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :catch_0
    move-exception v5

    .line 598
    .local v5, "e":Lorg/json/JSONException;
    const-string v14, "InstallShortcutReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception reading shortcut to add: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 604
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    .line 553
    .restart local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    :cond_1
    :try_start_1
    const-string v14, "isDeepShortcut"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v4}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->isDeepShortcutCategory(Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 554
    :cond_2
    iget-object v14, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 555
    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "shortcut_id"

    .line 556
    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    iget-object v0, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v16, v0

    .line 558
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    .line 554
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queryForFullDetails(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v12

    .line 560
    .local v12, "si":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 561
    const/4 v14, 0x0

    goto :goto_0

    .line 563
    :cond_3
    new-instance v15, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    move-object/from16 v0, p1

    invoke-direct {v15, v14, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    move-object v14, v15

    goto :goto_0

    .line 565
    .end local v12    # "si":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;>;"
    :cond_4
    const-string v14, "isAppWidget"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 566
    iget-object v14, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    const-string v15, "appWidgetId"

    const/16 v16, 0x0

    .line 567
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 568
    .local v13, "widgetId":I
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 569
    invoke-virtual {v14, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 570
    .local v11, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v11, :cond_5

    iget-object v14, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v15, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 571
    invoke-virtual {v11}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v14

    iget-object v15, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v14, v15}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 572
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 574
    :cond_6
    new-instance v14, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p1

    invoke-direct {v14, v11, v13, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 600
    .end local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    .end local v11    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13    # "widgetId":I
    :catch_1
    move-exception v5

    .line 601
    .local v5, "e":Ljava/net/URISyntaxException;
    const-string v14, "InstallShortcutReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception reading shortcut to add: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 577
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "decoder":Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
    :cond_7
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v3, "data":Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.INTENT"

    iget-object v15, v4, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 579
    const-string v14, "android.intent.extra.shortcut.NAME"

    const-string v15, "name"

    invoke-virtual {v4, v15}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v14, "icon"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "iconBase64":Ljava/lang/String;
    const-string v14, "iconResource"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 583
    .local v9, "iconResourceName":Ljava/lang/String;
    const-string v14, "iconResourcePackage"

    invoke-virtual {v4, v14}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, "iconResourcePackageName":Ljava/lang/String;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 585
    const/4 v14, 0x0

    invoke-static {v7, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 586
    .local v6, "iconArray":[B
    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 587
    .local v2, "b":Landroid/graphics/Bitmap;
    const-string v14, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 596
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "iconArray":[B
    :cond_8
    :goto_2
    new-instance v14, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p1

    invoke-direct {v14, v3, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 588
    :cond_9
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 589
    new-instance v8, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v8}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 591
    .local v8, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iput-object v9, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 592
    iput-object v10, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 593
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 250
    invoke-static {p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    sput-boolean v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 247
    return-void
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 326
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 327
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 328
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v3, p2

    .line 333
    :goto_0
    return-object v3

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "spKey":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 255
    .local v10, "sp":Landroid/content/SharedPreferences;
    invoke-static {v10, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->getAndClearInstallQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 256
    .local v3, "installQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 257
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 258
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 260
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 261
    .local v8, "pendingInfo":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v4, v8, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 264
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 266
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    .line 267
    .local v6, "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {p0, v7, v6}, Lnet/oneplus/h2launcher/LauncherModel;->isValidPackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 272
    .end local v6    # "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_1
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Lnet/oneplus/h2launcher/ItemInfo;

    move-result-object v2

    .line 274
    .local v2, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v12, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v12, :cond_2

    move-object v9, v2

    .line 275
    check-cast v9, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 279
    .local v9, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget v12, v2, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    if-nez v12, :cond_2

    .line 280
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {p0, v12}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->isExistAppComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 281
    const/4 v12, 0x1

    iput v12, v9, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 282
    const/4 v12, 0x0

    iput v12, v9, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 283
    const/4 v12, 0x1

    iput-boolean v12, v9, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 284
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIconForApplicationShortcutCreate(Lnet/oneplus/h2launcher/AssetCache;Z)V

    .line 285
    const-string v12, "InstallShortcutReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "install shortcut but can\'t find app, transfer its itemType to shortcut "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v9    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pendingInfo":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 295
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    .line 296
    .local v1, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v12

    invoke-virtual {v12, p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 301
    .end local v0    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v1    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    :cond_4
    :goto_1
    return-void

    .line 299
    :cond_5
    const-string v12, "InstallShortcutReceiver"

    const-string v13, "flushInstallQueue: installQueue isEmpty "

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 217
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 218
    .local v0, "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Lnet/oneplus/h2launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    goto :goto_0
.end method

.method private static getAndClearInstallQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v5, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 141
    :try_start_0
    const-string v4, "apps_to_install"

    const/4 v6, 0x0

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 143
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v5

    .line 155
    :goto_0
    return-object v2

    .line 146
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v1

    .line 150
    .local v1, "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .end local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 154
    .restart local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .restart local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "apps_to_install"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static isDeepShortcutCategory(Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;)Z
    .locals 4
    .param p0, "decoder"    # Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;

    .prologue
    const/4 v1, 0x0

    .line 608
    if-nez p0, :cond_0

    .line 609
    const-string v2, "InstallShortcutReceiver"

    const-string v3, "isDeepShortcutCategory: decoder is null"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    return v1

    .line 613
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 614
    const-string v2, "InstallShortcutReceiver"

    const-string v3, "isDeepShortcutCategory: launcherIntent is null"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 619
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 620
    const-string v2, "InstallShortcutReceiver"

    const-string v3, "isDeepShortcutCategory: categories is null"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_2
    const-string v1, "net.oneplus.launcher.DEEP_SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method static isExistAppComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 304
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 305
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v4

    .line 309
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 310
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 311
    .local v0, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 312
    .local v1, "appComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    const/4 v4, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 192
    .local v0, "extra":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static query(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N_MR1:Z

    if-eqz v6, :cond_3

    .line 664
    new-instance v2, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 665
    .local v2, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v2, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 666
    if-eqz p2, :cond_0

    .line 667
    invoke-virtual {v2, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 668
    invoke-virtual {v2, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 669
    invoke-virtual {v2, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 671
    :cond_0
    const/4 v5, 0x0

    .line 673
    .local v5, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    const-string v6, "launcherapps"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 674
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v1, v2, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 678
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    :goto_0
    if-nez v5, :cond_2

    .line 679
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 687
    .end local v2    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v5    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    :goto_1
    return-object v4

    .line 675
    .restart local v2    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local v5    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    const-string v6, "InstallShortcutReceiver"

    const-string v7, "Failed to query for shortcuts"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 681
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 682
    .local v4, "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 683
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    new-instance v7, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    invoke-direct {v7, v3}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 687
    .end local v2    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;>;"
    .end local v5    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 675
    .restart local v2    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local v5    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static queryForFullDetails(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->query(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queueActivityInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    .locals 1
    .param p0, "activity"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    new-instance v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queuePendingShortcutInfo(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method private static queuePendingShortcutInfo(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V
    .locals 3
    .param p0, "info"    # Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 232
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 234
    .local v1, "launcherNotLoaded":Z
    :goto_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->addToInstallQueue(Landroid/content/SharedPreferences;Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    .line 236
    sget-boolean v2, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 237
    invoke-static {p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 239
    :cond_0
    return-void

    .line 232
    .end local v1    # "launcherNotLoaded":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queueShortcut(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1
    .param p0, "info"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    new-instance v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queuePendingShortcutInfo(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public static queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p1, "widgetId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    new-instance v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    invoke-static {v0, p2}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queuePendingShortcutInfo(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method public static removeFromInstallQueue(Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "spKey":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 116
    .local v4, "sp":Landroid/content/SharedPreferences;
    sget-object v8, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 117
    :try_start_0
    const-string v7, "apps_to_install"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 122
    .local v6, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    .local v3, "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v1

    .line 128
    .local v1, "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 129
    invoke-virtual {p2, v7}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 135
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 133
    .restart local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "apps_to_install"

    invoke-interface {v7, v9, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 170
    .local v0, "info":Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
    invoke-static {p1}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 174
    if-eqz v0, :cond_2

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->disallowSameIconOnDesktop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, v0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/LauncherModel;->haveSameItemOnDesktop(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-eqz v1, :cond_0

    .line 181
    :cond_2
    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queuePendingShortcutInfo(Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    goto :goto_0
.end method
