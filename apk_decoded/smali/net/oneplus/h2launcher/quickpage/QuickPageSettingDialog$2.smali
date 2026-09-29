.class Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;
.super Ljava/lang/Object;
.source "QuickPageSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

.field final synthetic val$weatherSwitch:Landroid/widget/Switch;

.field final synthetic val$welcomeTitleEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;Landroid/widget/Switch;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->val$weatherSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->val$welcomeTitleEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 62
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 63
    .local v3, "wasWeatherEnabled":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->val$weatherSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 64
    .local v0, "isWeatherEnabled":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-result-object v5

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWeatherEnabled(Landroid/content/Context;Z)V

    .line 66
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWelcomeTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "oldTitle":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->val$welcomeTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "newTitle":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v5

    const-string v6, "launcher.shelf"

    const-string v7, "grt"

    const-string v8, "1"

    invoke-virtual {v5, v6, v7, v8}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-result-object v5

    invoke-static {v5, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWelcomeTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getWelcomePanel()Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    move-result-object v4

    .line 75
    .local v4, "welcomePanel":Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getWelcomeTitleView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    if-eq v3, v0, :cond_1

    .line 78
    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->toggleWeatherUpdate(Z)V

    .line 80
    :cond_1
    return-void
.end method
