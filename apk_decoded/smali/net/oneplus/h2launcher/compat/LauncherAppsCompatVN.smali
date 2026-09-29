.class public Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVN;
.super Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;
.source "LauncherAppsCompatVN.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherAppsCompatVN"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public isPackageSuspendedForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    const-class v5, Landroid/content/pm/LauncherApps;

    const-string v6, "getApplicationInfo"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/os/UserHandle;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, "getApplicationInfoMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatVN;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    aput-object v8, v6, v7

    .line 32
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 34
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 35
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 42
    .end local v1    # "getApplicationInfoMethod":Ljava/lang/reflect/Method;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v1    # "getApplicationInfoMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v4

    .line 35
    goto :goto_0

    .line 37
    .end local v1    # "getApplicationInfoMethod":Ljava/lang/reflect/Method;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "LauncherAppsCompatVN"

    const-string v5, "Running on N without getApplicationInfo"

    invoke-static {v3, v5, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    move v3, v4

    .line 42
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method
