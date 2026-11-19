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

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;->val$widgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    const/16 v5, 0x15

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 1113
    :cond_0
    return-void
.end method
