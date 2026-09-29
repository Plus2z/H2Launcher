.class public Lio/fabric/sdk/android/services/common/FirebaseInfo;
.super Ljava/lang/Object;
.source "FirebaseInfo.java"


# static fields
.field static final FIREBASE_FEATURE_SWITCH:Ljava/lang/String; = "com.crashlytics.useFirebaseAppId"

.field static final GOOGLE_APP_ID:Ljava/lang/String; = "google_app_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createApiKeyFromFirebaseAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getApiKeyFromFirebaseAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v1, "google_app_id"

    const-string v2, "string"

    invoke-static {p1, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Generating Crashlytics ApiKey from google_app_id in Strings"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->createApiKeyFromFirebaseAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirebaseCrashlyticsEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    const-string v4, "com.crashlytics.useFirebaseAppId"

    invoke-static {p1, v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    const-string v4, "google_app_id"

    const-string v5, "string"

    invoke-static {p1, v4, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 59
    .local v1, "hasGoogleAppId":Z
    :goto_1
    new-instance v4, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-virtual {v4, p1}, Lio/fabric/sdk/android/services/common/ApiKey;->getApiKeyFromManifest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    .line 60
    invoke-virtual {v4, p1}, Lio/fabric/sdk/android/services/common/ApiKey;->getApiKeyFromStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    move v0, v2

    .line 62
    .local v0, "hasApiKey":Z
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v0    # "hasApiKey":Z
    .end local v1    # "hasGoogleAppId":Z
    :cond_4
    move v1, v3

    .line 56
    goto :goto_1

    .restart local v1    # "hasGoogleAppId":Z
    :cond_5
    move v0, v3

    .line 60
    goto :goto_2
.end method
