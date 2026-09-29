.class public Lcom/crashlytics/android/CrashlyticsInitProvider;
.super Landroid/content/ContentProvider;
.source "CrashlyticsInitProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashlyticsInitProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsInitProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lio/fabric/sdk/android/services/common/FirebaseInfo;

    invoke-direct {v3}, Lio/fabric/sdk/android/services/common/FirebaseInfo;-><init>()V

    .line 23
    .local v3, "firebaseInfo":Lio/fabric/sdk/android/services/common/FirebaseInfo;
    new-instance v1, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;

    invoke-direct {v1}, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;-><init>()V

    .line 25
    .local v1, "enabledCheckStrategy":Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;
    invoke-virtual {p0, v0, v3, v1}, Lcom/crashlytics/android/CrashlyticsInitProvider;->shouldInitializeFabric(Landroid/content/Context;Lio/fabric/sdk/android/services/common/FirebaseInfo;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Lio/fabric/sdk/android/Kit;

    const/4 v7, 0x0

    new-instance v8, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v8}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 28
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "CrashlyticsInitProvider"

    const-string v8, "CrashlyticsInitProvider initialization successful"

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v4, v5

    .line 34
    :goto_0
    return v4

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "ex":Ljava/lang/IllegalStateException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "CrashlyticsInitProvider"

    const-string v7, "CrashlyticsInitProvider initialization unsuccessful"

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method shouldInitializeFabric(Landroid/content/Context;Lio/fabric/sdk/android/services/common/FirebaseInfo;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firebaseInfo"    # Lio/fabric/sdk/android/services/common/FirebaseInfo;
    .param p3, "enabledCheckStrategy"    # Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;

    .prologue
    .line 73
    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->isFirebaseCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p3, p1}, Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;->isCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
