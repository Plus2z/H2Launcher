.class public Lnet/oneplus/h2launcher/compat/UserManagerCompatVN;
.super Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;
.source "UserManagerCompatVN.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerCompatVN"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 8
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 42
    :try_start_0
    const-class v2, Landroid/os/UserManager;

    const-string v4, "isQuietModeEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/UserHandle;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "isQuietModeEnabledMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 53
    .end local v1    # "isQuietModeEnabledMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v2, "UserManagerCompatVN"

    const-string v4, "Running on N without isQuietModeEnabled"

    invoke-static {v2, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_2
    move v2, v3

    .line 53
    goto :goto_0

    .line 48
    :catch_1
    move-exception v2

    goto :goto_2

    .line 45
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

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
