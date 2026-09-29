.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
.super Ljava/lang/Object;
.source "FrequentAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;
    }
.end annotation


# instance fields
.field protected componentName:Landroid/content/ComponentName;

.field private f:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

.field protected id:J

.field protected intent:Landroid/content/Intent;

.field protected itemType:I

.field protected packageName:Ljava/lang/String;

.field protected shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

.field protected user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    return-void
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .prologue
    .line 513
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->f:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    return-object v0
.end method


# virtual methods
.method createFromPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p3, "stats"    # Lnet/oneplus/h2launcher/Stats;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "intentStr"    # Ljava/lang/String;
    .param p6, "itemType"    # I
    .param p7, "id"    # J
    .param p9, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p10, "f"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 530
    move-object/from16 v0, p10

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->f:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .line 531
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 533
    .local v14, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    .line 534
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Stats;->getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    .line 536
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 542
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 543
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 547
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 554
    new-instance v8, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;)V

    .line 555
    .local v8, "info":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
    const/4 v2, 0x1

    iput v2, v8, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->itemType:I

    .line 557
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p7

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;JLnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 558
    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    :goto_1
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->id:J

    .line 569
    move/from16 v0, p6

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->itemType:I

    .line 570
    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    .line 571
    iput-object v14, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->packageName:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p4

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->componentName:Landroid/content/ComponentName;

    .line 573
    move-object/from16 v0, p9

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 574
    const/4 v2, 0x1

    .line 576
    .end local v8    # "info":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
    :goto_2
    return v2

    .line 538
    :catch_0
    move-exception v13

    .line 539
    .local v13, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v13}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v13    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v8, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;)V

    .line 562
    .restart local v8    # "info":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
    const/4 v2, 0x0

    iput v2, v8, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->itemType:I

    .line 564
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p2

    move-object/from16 v10, p9

    invoke-virtual/range {v7 .. v12}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V

    .line 565
    const/4 v2, 0x1

    iput-boolean v2, v8, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->isIconReady:Z

    goto :goto_1

    .line 576
    .end local v8    # "info":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
