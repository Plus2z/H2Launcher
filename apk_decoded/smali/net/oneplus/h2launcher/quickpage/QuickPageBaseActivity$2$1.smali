.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    .prologue
    .line 203
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 207
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget v2, v2, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widgetId:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    .line 210
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    .line 214
    :cond_0
    return-void
.end method
