.class public Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final AUTO_ADD_TO_FOLDER_DURATION:J = 0x1b77400L

.field private static final INSTALLED_PACKAGES_PREFIX:Ljava/lang/String; = "installed_packages_for_user_"

.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"

.field private static final USER_FOLDER_ID_PREFIX:Ljava/lang/String; = "user_folder_"


# instance fields
.field private final mAddIconsToHomeScreen:Z

.field private final mContext:Landroid/content/Context;

.field private mHomeScreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lnet/oneplus/h2launcher/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

.field private final mUserCreationTime:J

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 97
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    .line 99
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 100
    .local v0, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserSerial:J

    .line 101
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserCreationTime(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserCreationTime:J

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installed_packages_for_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v3, "net.oneplus.h2launcher.managedusers.prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    .line 108
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lnet/oneplus/h2launcher/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mAddIconsToHomeScreen:Z

    .line 109
    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2
    .param p0, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "keysOut":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method private finalizeAdditions(Z)V
    .locals 3
    .param p1, "addHomeScreenShortcuts"    # Z

    .prologue
    .line 238
    invoke-direct {p0}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->finalizeWorkFolder()V

    .line 240
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mAddIconsToHomeScreen:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 243
    :cond_0
    return-void
.end method

.method private finalizeWorkFolder()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 160
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v8, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$1;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$1;-><init>(Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user_folder_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "folderIdKey":Ljava/lang/String;
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mAddIconsToHomeScreen:Z

    if-nez v7, :cond_2

    .line 174
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 176
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-interface {v7, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 182
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v7, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 183
    .local v0, "folderId":J
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/LauncherModel;->findFolderById(Ljava/lang/Long;)Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v6

    .line 185
    .local v6, "workFolder":Lnet/oneplus/h2launcher/FolderInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6, v11}, Lnet/oneplus/h2launcher/FolderInfo;->hasOption(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 187
    :cond_3
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v0, v1, v7}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    .line 192
    iget-object v5, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 194
    .local v5, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v7, Lnet/oneplus/h2launcher/MainThreadExecutor;

    invoke-direct {v7}, Lnet/oneplus/h2launcher/MainThreadExecutor;-><init>()V

    new-instance v8, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;

    invoke-direct {v8, p0, v5, v6}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;-><init>(Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/FolderInfo;)V

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    .end local v0    # "folderId":J
    .end local v5    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v6    # "workFolder":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_5
    new-instance v6, Lnet/oneplus/h2launcher/FolderInfo;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/FolderInfo;-><init>()V

    .line 206
    .restart local v6    # "workFolder":Lnet/oneplus/h2launcher/FolderInfo;
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v8, 0x7f0b00d5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v6, v11, v10, v7}, Lnet/oneplus/h2launcher/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 210
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 211
    .local v3, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v6, v3}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    goto :goto_1

    .line 215
    .end local v3    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v4}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 218
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user_folder_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v6, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-wide v8, v6, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const/4 v7, 0x0

    invoke-direct {p0, v8, v9, v7}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_0
.end method

.method public static get(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 74
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->isDualApp(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "outExistingApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 303
    .local v0, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 307
    :goto_0
    return v1

    .line 306
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 307
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v4

    .line 347
    .local v4, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    .line 349
    .local v1, "myUser":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    const/4 v2, 0x0

    .line 350
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 351
    .local v3, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    if-nez v2, :cond_1

    .line 356
    const-string v6, "net.oneplus.h2launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 360
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user_folder_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "folderIdKey":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 362
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 365
    .end local v0    # "folderIdKey":Ljava/lang/String;
    .end local v3    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    return-void
.end method

.method private markForAddition(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;J)V
    .locals 6
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "installTime"    # J

    .prologue
    .line 150
    iget-wide v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUserCreationTime:J

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 153
    .local v0, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->fromActivityInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void

    .line 150
    .end local v0    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-nez v6, :cond_0

    .line 334
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v4

    .line 319
    .local v4, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 320
    .local v5, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 321
    .local v3, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_1

    .line 324
    .end local v3    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_1
    const-string v6, "net.oneplus.h2launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 327
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 330
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 333
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private saveWorkFolderShortcuts(JI)V
    .locals 11
    .param p1, "workFolderId"    # J
    .param p3, "startingRank"    # I

    .prologue
    const/4 v6, 0x0

    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 229
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    add-int/lit8 v8, p3, 0x1

    .end local p3    # "startingRank":I
    .local v8, "startingRank":I
    iput p3, v1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 230
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-wide v2, p1

    move v7, v6

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    move p3, v8

    .line 231
    .end local v8    # "startingRank":I
    .restart local p3    # "startingRank":I
    goto :goto_0

    .line 232
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 12
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 249
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 252
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 253
    .local v6, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v7

    .line 255
    .local v7, "userAppsExisted":Z
    const/4 v4, 0x0

    .line 256
    .local v4, "newPackageAdded":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 257
    .local v2, "installTime":J
    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    .line 259
    .local v1, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    array-length v11, p1

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v5, p1, v9

    .line 260
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 261
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v4, 0x1

    .line 264
    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 265
    invoke-virtual {v1, v5, v8}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 267
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v8, v2, v3}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->markForAddition(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;J)V

    .line 259
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    :cond_0
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 272
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 273
    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 276
    :cond_2
    return-void
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 6
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 282
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 283
    .local v2, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, "packageRemoved":Z
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 287
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    const/4 v1, 0x1

    .line 286
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 293
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    :cond_2
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mHomeScreenApps:Ljava/util/ArrayList;

    .line 117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 119
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v4, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v6

    .line 122
    .local v6, "userAppsExisted":Z
    const/4 v2, 0x0

    .line 124
    .local v2, "newPackageAdded":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 125
    .local v1, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 127
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v2, 0x1

    .line 131
    :try_start_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x2000

    .line 132
    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 133
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v1, v8, v9}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->markForAddition(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ManagedProfileHeuristic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 141
    iget-object v7, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 147
    :cond_2
    return-void
.end method
