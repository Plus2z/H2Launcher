.class public Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
.super Ljava/lang/Object;
.source "WidgetAddFlowHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .param p1, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderInfo(Landroid/content/Context;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public needsConfigure()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startBindFlow(Lnet/oneplus/h2launcher/Launcher;ILnet/oneplus/h2launcher/ItemInfo;I)V
    .locals 3
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p4, "requestCode"    # I

    .prologue
    .line 58
    invoke-static {p2, p0, p3}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->forWidgetInfo(ILnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "appWidgetProvider"

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v1, "appWidgetProviderProfile"

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 64
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0, p4}, Lnet/oneplus/h2launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void

    .line 58
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startConfigActivity(Lnet/oneplus/h2launcher/Launcher;ILnet/oneplus/h2launcher/ItemInfo;I)Z
    .locals 7
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p4, "requestCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-static {p2, p0, p3}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->forWidgetInfo(ILnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v6

    :cond_1
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 89
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 90
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v4

    move v2, p2

    move-object v3, p1

    move v5, p4

    .line 89
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    move v0, v6

    .line 91
    goto :goto_0
.end method

.method public startConfigActivity(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;I)Z
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .param p3, "requestCode"    # I

    .prologue
    .line 75
    iget v0, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->startConfigActivity(Lnet/oneplus/h2launcher/Launcher;ILnet/oneplus/h2launcher/ItemInfo;I)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    return-void
.end method
