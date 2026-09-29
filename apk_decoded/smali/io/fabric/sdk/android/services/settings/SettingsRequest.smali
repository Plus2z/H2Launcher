.class public Lio/fabric/sdk/android/services/settings/SettingsRequest;
.super Ljava/lang/Object;
.source "SettingsRequest.java"


# instance fields
.field public final advertisingId:Ljava/lang/String;

.field public final androidId:Ljava/lang/String;

.field public final apiKey:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final iconHash:Ljava/lang/String;

.field public final installationId:Ljava/lang/String;

.field public final instanceId:Ljava/lang/String;

.field public final osBuildVersion:Ljava/lang/String;

.field public final osDisplayVersion:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "deviceModel"    # Ljava/lang/String;
    .param p3, "osBuildVersion"    # Ljava/lang/String;
    .param p4, "osDisplayVersion"    # Ljava/lang/String;
    .param p5, "advertisingId"    # Ljava/lang/String;
    .param p6, "installationId"    # Ljava/lang/String;
    .param p7, "androidId"    # Ljava/lang/String;
    .param p8, "instanceId"    # Ljava/lang/String;
    .param p9, "displayVersion"    # Ljava/lang/String;
    .param p10, "buildVersion"    # Ljava/lang/String;
    .param p11, "source"    # I
    .param p12, "iconHash"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->apiKey:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->deviceModel:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->osBuildVersion:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->osDisplayVersion:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->advertisingId:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->installationId:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->androidId:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->displayVersion:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->buildVersion:Ljava/lang/String;

    .line 51
    iput p11, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->source:I

    .line 52
    iput-object p12, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->iconHash:Ljava/lang/String;

    .line 53
    return-void
.end method
