.class public Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "QuickPageSettingDialog.java"


# instance fields
.field private mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    return-object v0
.end method


# virtual methods
.method public initDialog()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x0

    .line 32
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWelcomeTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "welcomeTitle":Ljava/lang/String;
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0400b9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 35
    .local v3, "settingsView":Landroid/view/View;
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->setView(Landroid/view/View;)V

    .line 37
    const v9, 0x7f1101a6

    .line 38
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 39
    .local v8, "welcomeTitleEditText":Landroid/widget/EditText;
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 42
    const v9, 0x7f1101a9

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 44
    .local v4, "weatherContainer":Landroid/view/ViewGroup;
    const v9, 0x7f1101aa

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    .line 46
    .local v6, "weatherSwitch":Landroid/widget/Switch;
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 47
    new-instance v9, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$1;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "confirm":Ljava/lang/String;
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "cancel":Ljava/lang/String;
    const/4 v9, -0x1

    new-instance v10, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;

    invoke-direct {v10, p0, v6, v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$2;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;Landroid/widget/Switch;Landroid/widget/EditText;)V

    invoke-virtual {p0, v9, v1, v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 83
    new-instance v9, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$3;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$3;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)V

    invoke-virtual {p0, v13, v0, v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v10, "net.oneplus.weather"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v10, "net.oneplus.weather"

    .line 91
    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 92
    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 93
    new-instance v9, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;

    invoke-direct {v9, p0, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;Landroid/widget/Switch;)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {v6, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    invoke-virtual {v6, v12}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 102
    invoke-virtual {v6, v12}, Landroid/widget/Switch;->setClickable(Z)V

    .line 104
    const v9, 0x7f1101ab

    .line 105
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 106
    .local v5, "weatherRemovedHint":Landroid/widget/TextView;
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 126
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
