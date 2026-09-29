.class final Lnet/oneplus/h2launcher/Utilities$1;
.super Landroid/os/AsyncTask;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Utilities;->getSearchWidgetProvider(Landroid/content/Context;Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

.field final synthetic val$searchManager:Landroid/app/SearchManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/SearchManager;Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$searchManager:Landroid/app/SearchManager;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 786
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Utilities$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 789
    iget-object v6, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 790
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$searchManager:Landroid/app/SearchManager;

    invoke-virtual {v6}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 791
    .local v5, "searchComponent":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    invoke-static {v3, v5}, Lnet/oneplus/h2launcher/Utilities;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 792
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

    invoke-interface {v6, v8}, Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;->onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 815
    :goto_0
    return-object v8

    .line 795
    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, "providerPkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 799
    .local v1, "defaultWidgetForSearchPackage":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 800
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 801
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 802
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v7, :cond_4

    .line 803
    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 805
    iget-object v7, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

    invoke-interface {v7, v2}, Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;->onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 806
    :cond_3
    if-nez v1, :cond_2

    .line 807
    move-object v1, v2

    goto :goto_1

    .line 810
    :cond_4
    iget-object v7, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

    invoke-interface {v7, v2}, Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;->onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 814
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/Utilities$1;->val$listener:Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;

    invoke-interface {v6, v1}, Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;->onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0
.end method
