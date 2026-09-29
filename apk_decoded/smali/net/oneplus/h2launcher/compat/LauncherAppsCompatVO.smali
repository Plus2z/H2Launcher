.class public Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVO;
.super Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;
.source "LauncherAppsCompatVO.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCustomShortcutActivityList(Lnet/oneplus/h2launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 16
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
    .line 64
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    .line 68
    .local v6, "myUser":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :try_start_0
    const-class v11, Landroid/content/pm/LauncherApps;

    const-string v12, "getShortcutConfigActivityList"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Landroid/os/UserHandle;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 72
    .local v5, "m":Ljava/lang/reflect/Method;
    if-nez p1, :cond_4

    .line 73
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVO;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v11

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v10

    .line 74
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    const/4 v7, 0x0

    .line 80
    .local v7, "packageName":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 81
    .local v9, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 82
    .local v4, "ignoreTargetSdk":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    .line 83
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 85
    .local v2, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_1

    .line 87
    :cond_2
    new-instance v13, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v13, v2}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    .end local v1    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v2    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local v4    # "ignoreTargetSdk":Z
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "LauncherAppsCompatVO"

    const-string v12, "Error calling new API"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v8

    .line 76
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :cond_4
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .restart local v10    # "users":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    move-object/from16 v0, p1

    iget-object v11, v0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    move-object/from16 v0, p1

    iget-object v7, v0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method
