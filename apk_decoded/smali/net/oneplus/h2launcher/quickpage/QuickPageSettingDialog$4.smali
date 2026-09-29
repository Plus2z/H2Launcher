.class Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;
.super Ljava/lang/Object;
.source "QuickPageSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;->val$weatherSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;->val$weatherSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$4;->val$weatherSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
