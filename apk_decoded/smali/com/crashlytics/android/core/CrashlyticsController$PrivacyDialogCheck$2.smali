.class Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dialog:Lcom/crashlytics/android/core/CrashPromptDialog;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;Lcom/crashlytics/android/core/CrashPromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;->this$0:Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;->val$dialog:Lcom/crashlytics/android/core/CrashPromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;->val$dialog:Lcom/crashlytics/android/core/CrashPromptDialog;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog;->show()V

    .line 1743
    return-void
.end method
