.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
.super Ljava/lang/Object;
.source "FrequentAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppItemAdapter"
.end annotation


# instance fields
.field private mListAppItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    .line 353
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    .prologue
    .line 348
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->create()V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    .prologue
    .line 348
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->clear()V

    return-void
.end method

.method static synthetic access$2200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    .prologue
    .line 348
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 348
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->updateItem(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->removeItem(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->removeItem(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 407
    :cond_0
    return-void
.end method

.method private create()V
    .locals 4

    .prologue
    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 398
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 399
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getViewForItem(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->addView(Landroid/view/View;I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_0
    return-void
.end method

.method private declared-synchronized removeItem(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 449
    monitor-enter p0

    const/4 v3, 0x0

    .line 450
    .local v3, "removedCount":I
    :try_start_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 453
    .local v2, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v2, :cond_0

    iget-wide v4, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->id:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, p3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_1
    if-eqz v3, :cond_2

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 461
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 449
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized removeItem(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 430
    monitor-enter p0

    const/4 v3, 0x0

    .line 432
    .local v3, "removedCount":I
    :try_start_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 435
    .local v2, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_1
    if-eqz v3, :cond_2

    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 443
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 430
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateItem(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intentStr"    # Ljava/lang/String;
    .param p3, "itemType"    # I
    .param p4, "id"    # J
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 468
    monitor-enter p0

    const/4 v15, 0x0

    .line 470
    .local v15, "isUpdated":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 472
    .local v2, "appSize":I
    if-nez v2, :cond_1

    .line 506
    .end local v2    # "appSize":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 477
    .restart local v2    # "appSize":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    if-ge v14, v2, :cond_4

    .line 478
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 479
    .local v16, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p3, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->componentName:Landroid/content/ComponentName;

    .line 481
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    move-object/from16 v0, v16

    iget-wide v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->id:J

    cmp-long v4, v4, p4

    if-nez v4, :cond_5

    .line 484
    :cond_3
    if-eqz v14, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 489
    const/4 v15, 0x1

    .line 496
    .end local v16    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_4
    if-nez v15, :cond_0

    .line 497
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;-><init>()V

    .line 498
    .local v3, "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->createFromPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 501
    .local v17, "itemToRemove":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 468
    .end local v2    # "appSize":I
    .end local v3    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v14    # "index":I
    .end local v17    # "itemToRemove":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 477
    .restart local v2    # "appSize":I
    .restart local v14    # "index":I
    .restart local v16    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method getValidCount()I
    .locals 4

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "count":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 412
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_1
    return v0
.end method

.method getViewForItem(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .prologue
    const/4 v3, 0x0

    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040062

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 420
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;)V

    .line 421
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;
    const v1, 0x7f110117

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    .end local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1400(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)V

    .line 426
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 387
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 388
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getViewForItem(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Landroid/view/View;

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$400(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$300(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$502(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;I)I

    .line 394
    :cond_1
    return-void
.end method

.method declared-synchronized updateIconUI(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 367
    monitor-enter p0

    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    :cond_1
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v3, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    move-result-object v2

    .line 372
    .local v2, "target":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v2, :cond_0

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 374
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 375
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getViewForItem(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v2    # "target":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 373
    .restart local v0    # "i":I
    .restart local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .restart local v2    # "target":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method declared-synchronized updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->clear()V

    .line 358
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->mListAppItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
