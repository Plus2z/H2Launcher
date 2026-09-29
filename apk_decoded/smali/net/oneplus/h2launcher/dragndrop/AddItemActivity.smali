.class public Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;
.super Lnet/oneplus/h2launcher/BaseActivity;
.source "AddItemActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# static fields
.field private static final REQUEST_BIND_APPWIDGET:I = 0x1

.field private static final SHADOW_SIZE:I = 0xa

.field private static final STATE_EXTRA_WIDGET_ID:Ljava/lang/String; = "state.widget.id"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApp:Lnet/oneplus/h2launcher/LauncherAppState;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

.field private mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

.field private mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BaseActivity;-><init>()V

    .line 37
    const-class v0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    return-void
.end method

.method private acceptWidget(I)V
    .locals 2
    .param p1, "widgetId"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->accept(Landroid/os/Bundle;)Z

    .line 217
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    .line 218
    return-void
.end method

.method public static getPreview(Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;)Landroid/widget/RemoteViews;
    .locals 2
    .param p0, "request"    # Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .prologue
    .line 167
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "appWidgetPreview"

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "appWidgetPreview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 172
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupShortcut()V
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-direct {v1, v2, p0}, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;-><init>(Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;Landroid/content/Context;)V

    .line 136
    .local v1, "shortcutInfo":Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;
    new-instance v0, Lnet/oneplus/h2launcher/model/WidgetItem;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V

    .line 137
    .local v0, "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lnet/oneplus/h2launcher/widget/WidgetImageView;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;

    invoke-direct {v3, v1}, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lnet/oneplus/h2launcher/model/WidgetItem;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V

    .line 139
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    .line 140
    return-void
.end method

.method private setupWidget()Z
    .locals 5

    .prologue
    .line 143
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 144
    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 145
    .local v1, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    iget v2, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v3, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v3, :cond_0

    iget v2, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v3, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    if-le v2, v3, :cond_1

    .line 147
    :cond_0
    const/4 v2, 0x0

    .line 163
    :goto_0
    return v2

    .line 149
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-static {v3}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getPreview(Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->setPreview(Landroid/widget/RemoteViews;)V

    .line 151
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 152
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    invoke-direct {v2, p0, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 154
    new-instance v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v2, v1}, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    .line 155
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v3, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 156
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v3, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 157
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/app/Activity;Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 159
    new-instance v0, Lnet/oneplus/h2launcher/model/WidgetItem;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    .line 160
    .local v0, "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lnet/oneplus/h2launcher/widget/WidgetImageView;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 161
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lnet/oneplus/h2launcher/model/WidgetItem;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V

    .line 162
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    .line 163
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 227
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 228
    if-eqz p3, :cond_0

    const-string v1, "appWidgetId"

    iget v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 229
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "widgetId":I
    :goto_0
    if-ne p2, v3, :cond_1

    .line 232
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->acceptWidget(I)V

    .line 241
    .end local v0    # "widgetId":I
    :goto_1
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    goto :goto_0

    .line 235
    .restart local v0    # "widgetId":I
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 236
    iput v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    goto :goto_1

    .line 240
    .end local v0    # "widgetId":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseActivity;->onBackPressed()V

    .line 223
    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    .line 180
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 64
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    .line 70
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 76
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f1100b6

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 80
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->setupShortcut()V

    .line 88
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->setupWidget()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 101
    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetCell:Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lnet/oneplus/h2launcher/widget/WidgetImageView;

    move-result-object v2

    .line 105
    .local v2, "img":Lnet/oneplus/h2launcher/widget/WidgetImageView;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 130
    :goto_0
    return v6

    .line 109
    :cond_0
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getTop()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 114
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 115
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    :cond_1
    const v3, 0x10a0001

    .line 128
    invoke-static {p0, v6, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 127
    invoke-virtual {p0, v1, v3}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 186
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getRequestType()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 187
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaceAutomaticallyClick : queueShortcut= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v2, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 189
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 188
    invoke-static {v2, p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->queueShortcut(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 190
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->accept()Z

    .line 191
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    .line 211
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 196
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    iget v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 197
    invoke-virtual {v4, p0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 196
    invoke-virtual {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v1

    .line 198
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 199
    iget v2, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->acceptWidget(I)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "appWidgetId"

    iget v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v2, "appWidgetProvider"

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const-string v2, "appWidgetProviderProfile"

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 209
    invoke-virtual {v3, p0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    .line 208
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0, v6}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "state.widget.id"

    iget v1, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 254
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "state.widget.id"

    iget v1, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseActivity;->onStop()V

    .line 259
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->finish()V

    .line 260
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 95
    const/4 v0, 0x0

    return v0
.end method
