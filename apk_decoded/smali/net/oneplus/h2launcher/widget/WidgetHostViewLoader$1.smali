.class Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    .prologue
    .line 90
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    .line 94
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget v1, v1, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method
