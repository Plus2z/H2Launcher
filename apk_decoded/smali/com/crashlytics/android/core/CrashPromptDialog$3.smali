.class final Lcom/crashlytics/android/core/CrashPromptDialog$3;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;->sendUserReportsWithoutPrompting(Z)V

    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
