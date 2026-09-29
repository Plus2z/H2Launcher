.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

.field final synthetic val$widgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 1103
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1106
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 1107
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 1110
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    .line 1109
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    .line 1113
    :cond_0
    return-void
.end method
