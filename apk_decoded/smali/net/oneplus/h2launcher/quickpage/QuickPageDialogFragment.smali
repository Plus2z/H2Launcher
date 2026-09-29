.class public Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;
.super Landroid/app/DialogFragment;
.source "QuickPageDialogFragment.java"


# static fields
.field private static final ARG_TAG:Ljava/lang/String; = "tag"

.field public static final DIALOG_SETTING:Ljava/lang/String; = "dialog_tag_setting"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;-><init>()V

    .line 19
    .local v1, "frag":Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "tag"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 27
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "tag"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 29
    sget-object v5, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->TAG:Ljava/lang/String;

    const-string v6, "invalid argument: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "tag"

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    const-string v5, "dialog_tag_setting"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    new-array v0, v7, [I

    const v5, 0x7f010004

    aput v5, v0, v9

    .line 36
    .local v0, "attrs":[I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 37
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 38
    .local v3, "themeResId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    if-nez v3, :cond_2

    .line 41
    sget-object v5, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->TAG:Ljava/lang/String;

    const-string v6, "invalid quick page alert dialog theme resource id: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    .local v1, "settingDialog":Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->initDialog()V

    .line 47
    invoke-virtual {v1, v7}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {v1, v7}, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
