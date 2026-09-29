.class Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$1;
.super Ljava/lang/Object;
.source "QuickPageSettingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog$1;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 51
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v0

    const-string v1, "launcher.shelf"

    const-string v2, "shelf_weather"

    .line 52
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
