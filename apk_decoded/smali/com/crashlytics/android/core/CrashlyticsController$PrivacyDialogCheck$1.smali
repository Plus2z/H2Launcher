.class Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$1;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->canSendReports()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$1;->this$0:Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendUserReportsWithoutPrompting(Z)V
    .locals 1
    .param p1, "send"    # Z

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$1;->this$0:Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->access$2100(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;)Lcom/crashlytics/android/core/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/PreferenceManager;->setShouldAlwaysSendReports(Z)V

    .line 1733
    return-void
.end method
