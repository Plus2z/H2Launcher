.class public Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickPageBroadcastReceiver.java"


# static fields
.field public static final OPEN_QUICK_PAGE:Ljava/lang/String; = "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isLauncherDefault()Z
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private startActivityAsUser(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    :try_start_0
    const-string v4, "android.os.UserHandle"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 48
    .local v3, "userHandle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "CURRENT_OR_SELF"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "CURRENT_OR_SELF":Ljava/lang/Object;
    iget-object v4, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "startActivityAsUser"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    .local v2, "startActivityAsUser":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 63
    .end local v0    # "CURRENT_OR_SELF":Ljava/lang/Object;
    .end local v2    # "startActivityAsUser":Ljava/lang/reflect/Method;
    .end local v3    # "userHandle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "failed to get method: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "failed to find class: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "failed to invoke target: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "illegal access exception: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v4, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "failed to get field: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iput-object p1, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 27
    new-instance v2, Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-direct {v2, p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;-><init>(Landroid/content/Context;)V

    .line 28
    .local v2, "preferencesHelper":Lnet/oneplus/h2launcher/config/PreferencesHelper;
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isQuickPageEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v3, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-direct {p0}, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->isLauncherDefault()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "main":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v3, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->startActivityAsUser(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    .end local v1    # "main":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, "external":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lnet/oneplus/h2launcher/QuickPageExternalActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/QuickPageBroadcastReceiver;->startActivityAsUser(Landroid/content/Intent;)V

    goto :goto_0
.end method
