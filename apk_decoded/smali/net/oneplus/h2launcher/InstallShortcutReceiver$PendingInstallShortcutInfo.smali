.class Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field final activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

.field final data:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;

.field final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

.field final user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "widgetId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 400
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    .line 401
    iput-object p1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 403
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 404
    iput-object p3, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    .line 408
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 409
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 353
    iput-object p2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 355
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 356
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 357
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 358
    iput-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 359
    iput-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    .line 360
    iput-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 361
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 368
    iput-object p2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 369
    iput-object p1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 370
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    .line 371
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 372
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 374
    iget-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-static {p2, p1, v0}, Lnet/oneplus/h2launcher/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 375
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 383
    iput-object p1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    .line 384
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 386
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 387
    iput-object p2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 390
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 391
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 413
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    if-eqz v7, :cond_0

    .line 417
    :try_start_0
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 418
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 419
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "isAppShortcut"

    .line 420
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "userHandle"

    .line 421
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 422
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 421
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    .line 423
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 494
    :goto_0
    return-object v6

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when adding shortcut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    if-eqz v7, :cond_5

    .line 432
    :try_start_1
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 433
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 434
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "userHandle"

    .line 435
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 436
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 435
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    .line 437
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 457
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 458
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    :cond_2
    :goto_2
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v9, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "name":Ljava/lang/String;
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 470
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 471
    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$ShortcutIconResource;

    .line 475
    .local v3, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    :try_start_2
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 476
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 477
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "name"

    .line 478
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 479
    .local v4, "json":Lorg/json/JSONStringer;
    if-eqz v1, :cond_3

    .line 480
    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 481
    .local v2, "iconByteArray":[B
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, v2

    const/4 v10, 0x0

    .line 482
    invoke-static {v2, v8, v9, v10}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v8

    .line 481
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 485
    .end local v2    # "iconByteArray":[B
    :cond_3
    if-eqz v3, :cond_4

    .line 486
    const-string v7, "iconResource"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 487
    const-string v7, "iconResourcePackage"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 488
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 490
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 441
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v4    # "json":Lorg/json/JSONStringer;
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v7, :cond_1

    .line 445
    :try_start_3
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 446
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 447
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "isAppWidget"

    .line 448
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "userHandle"

    .line 449
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 450
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 449
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    .line 451
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 452
    :catch_2
    move-exception v0

    .line 453
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 459
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 460
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 461
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 462
    iget-object v7, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/high16 v8, 0x10200000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 491
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .restart local v5    # "name":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 492
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when adding shortcut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getItemInfo()Lnet/oneplus/h2launcher/ItemInfo;
    .locals 7

    .prologue
    .line 515
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    if-eqz v4, :cond_0

    .line 516
    new-instance v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    iget-object v5, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    .line 536
    :goto_0
    return-object v1

    .line 518
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    if-eqz v4, :cond_1

    .line 519
    new-instance v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    iget-object v5, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 520
    .local v2, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    iget-object v5, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 521
    goto :goto_0

    .line 522
    .end local v2    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_2

    .line 523
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 524
    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 525
    .local v1, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    new-instance v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    .line 526
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 528
    .local v3, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    .line 529
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    .line 530
    .local v0, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v4, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanX:I

    .line 531
    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v4, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanY:I

    .line 532
    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 533
    iget v4, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    move-object v1, v3

    .line 534
    goto :goto_0

    .line 536
    .end local v0    # "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .end local v1    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v3    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Lnet/oneplus/h2launcher/LauncherAppState;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getShortcutInfo()Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    iget-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->fromActivityInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 508
    iget-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 508
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 509
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isLuncherActivity()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
