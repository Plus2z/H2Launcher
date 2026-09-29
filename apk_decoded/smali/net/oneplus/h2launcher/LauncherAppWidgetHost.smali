.class public Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQsbWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mQsbWidgetId:I

    .line 47
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public addProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 106
    iget-boolean v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v2, :cond_0

    .line 107
    new-instance v1, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-direct {v1, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "lahv":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    const-string v2, "layout_inflater"

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 110
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 112
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 115
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lahv":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 57
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mQsbWidgetId:I

    if-ne p2, v0, :cond_0

    .line 58
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost$1;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/Context;)V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 124
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 126
    .local v0, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 127
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 99
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 102
    .end local v0    # "callback":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public removeProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public setQsbWidgetId(I)V
    .locals 0
    .param p1, "widgetId"    # I

    .prologue
    .line 51
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->mQsbWidgetId:I

    .line 52
    return-void
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 72
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->TAG:Ljava/lang/String;

    const-string v2, "startListening:"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
