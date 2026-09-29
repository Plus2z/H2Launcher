.class public Lnet/oneplus/h2launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static final ENABLE_CRASHLYTICS:Z = true

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 14
    const-class v0, Lnet/oneplus/h2launcher/LauncherApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/oneplus/h2launcher/LauncherApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCrashlytics()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v1, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    .line 34
    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 36
    .local v0, "crashlyticsKit":Lcom/crashlytics/android/Crashlytics;
    const/4 v1, 0x1

    new-array v1, v1, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lnet/oneplus/h2launcher/LauncherApplication;->sContext:Landroid/content/Context;

    .line 22
    sget-object v2, Lnet/oneplus/h2launcher/LauncherApplication;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->getOneplusPermissionState(Landroid/content/Context;)I

    move-result v1

    .line 23
    .local v1, "userAgree":I
    sget-object v2, Lnet/oneplus/h2launcher/LauncherApplication;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isUserJoinPlan(Landroid/content/Context;)Z

    move-result v0

    .line 24
    .local v0, "isUserJoinPlan":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherApplication;->TAG:Ljava/lang/String;

    const-string v3, "user agree launcher to access network?%d, user join plan? %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherApplication;->initCrashlytics()V

    .line 29
    :cond_0
    return-void
.end method
