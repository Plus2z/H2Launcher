.class public Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
.super Lnet/oneplus/h2launcher/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

.field public previewImage:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 1
    .param p1, "i"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PendingAddItemInfo;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 38
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->itemType:I

    .line 43
    :goto_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 44
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 45
    iget-object v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 46
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->previewImage:I

    .line 47
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->icon:I

    .line 49
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 50
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 51
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 52
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 53
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->itemType:I

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-object v0
.end method
