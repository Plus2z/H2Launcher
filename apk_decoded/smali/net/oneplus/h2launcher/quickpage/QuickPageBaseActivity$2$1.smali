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

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    iget v2, v2, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widgetId:I

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 214
    :cond_0
    return-void
.end method
