.class Lcom/crashlytics/android/core/CrashPromptDialog;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;,
        Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog$Builder;

.field private final latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;
    .param p2, "latch"    # Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    .line 133
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    .line 134
    return-void
.end method

.method public static create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    .param p2, "alwaysSendCallback"    # Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    .prologue
    .line 50
    new-instance v3, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V

    .line 51
    .local v3, "latch":Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
    new-instance v6, Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-direct {v6, p0, p1}, Lcom/crashlytics/android/core/DialogStringResolver;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V

    .line 52
    .local v6, "stringResolver":Lcom/crashlytics/android/core/DialogStringResolver;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Lcom/crashlytics/android/core/DialogStringResolver;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/crashlytics/android/core/CrashPromptDialog;->createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v4

    .line 56
    .local v4, "scrollView":Landroid/widget/ScrollView;
    new-instance v5, Lcom/crashlytics/android/core/CrashPromptDialog$1;

    invoke-direct {v5, v3}, Lcom/crashlytics/android/core/CrashPromptDialog$1;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 67
    .local v5, "sendClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 68
    invoke-virtual {v6}, Lcom/crashlytics/android/core/DialogStringResolver;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 69
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 70
    invoke-virtual {v6}, Lcom/crashlytics/android/core/DialogStringResolver;->getSendButtonTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    iget-boolean v7, p1, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showCancelButton:Z

    if-eqz v7, :cond_0

    .line 73
    new-instance v2, Lcom/crashlytics/android/core/CrashPromptDialog$2;

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/CrashPromptDialog$2;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 81
    .local v2, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v6}, Lcom/crashlytics/android/core/DialogStringResolver;->getCancelButtonTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    .end local v2    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-boolean v7, p1, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showAlwaysSendButton:Z

    if-eqz v7, :cond_1

    .line 86
    new-instance v0, Lcom/crashlytics/android/core/CrashPromptDialog$3;

    invoke-direct {v0, p2, v3}, Lcom/crashlytics/android/core/CrashPromptDialog$3;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 95
    .local v0, "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v6}, Lcom/crashlytics/android/core/DialogStringResolver;->getAlwaysSendButtonTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    .end local v0    # "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v7, Lcom/crashlytics/android/core/CrashPromptDialog;

    invoke-direct {v7, v1, v3}, Lcom/crashlytics/android/core/CrashPromptDialog;-><init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    return-object v7
.end method

.method private static createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, "density":F
    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v3

    .line 109
    .local v3, "textViewPadding":I
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 111
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v4, 0x1030044

    invoke-virtual {v2, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 117
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "scrollView":Landroid/widget/ScrollView;
    const/16 v4, 0xe

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v5

    const/16 v6, 0xa

    .line 119
    invoke-static {v0, v6}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v0, v7}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v7

    .line 118
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 121
    return-object v1
.end method

.method private static dipsToPixels(FI)I
    .locals 1
    .param p0, "density"    # F
    .param p1, "dips"    # I

    .prologue
    .line 125
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public await()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->await()V

    .line 148
    return-void
.end method

.method public getOptIn()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->getOptIn()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 141
    return-void
.end method
