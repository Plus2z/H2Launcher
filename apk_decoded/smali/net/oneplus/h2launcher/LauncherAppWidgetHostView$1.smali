.class Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    .prologue
    .line 219
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;->this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;->this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;->this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 224
    return-void
.end method
