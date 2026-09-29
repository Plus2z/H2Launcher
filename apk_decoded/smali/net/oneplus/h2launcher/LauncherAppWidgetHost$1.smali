.class Lnet/oneplus/h2launcher/LauncherAppWidgetHost$1;
.super Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost$1;->this$0:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
