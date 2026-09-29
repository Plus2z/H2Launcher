.class Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredWidgetRefresh"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;)V
    .locals 4
    .param p3, "host"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5291
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5292
    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 5293
    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    .line 5294
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    .line 5295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 5297
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->addProviderChangeListener(Ljava/lang/Runnable;)V

    .line 5300
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5305
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->removeProviderChangeListener(Ljava/lang/Runnable;)V

    .line 5306
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5308
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v3, :cond_1

    .line 5325
    :cond_0
    return-void

    .line 5312
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 5314
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 5315
    .local v1, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    iget-object v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v4, v4, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    if-eqz v4, :cond_2

    .line 5316
    iget-object v2, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    .line 5317
    .local v2, "view":Lnet/oneplus/h2launcher/PendingAppWidgetHostView;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/Launcher;->removeAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 5319
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 5321
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 5322
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/Launcher;->bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    goto :goto_0
.end method
