.class Lnet/oneplus/h2launcher/Stats$LoadStats;
.super Landroid/os/AsyncTask;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStats"
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
.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/Stats;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/Stats$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/Stats;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/Stats$1;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Stats$LoadStats;-><init>(Lnet/oneplus/h2launcher/Stats;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Stats$LoadStats;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 35
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 539
    const-string v3, "Stats"

    const-string v4, "LoadStats doInBackground..."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/16 v21, 0x0

    .line 542
    .local v21, "isOldStatsExist":Z
    const/16 v28, 0x0

    .line 543
    .local v28, "statsOld":Ljava/io/DataInputStream;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v13, "currentStateCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "stats.log"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 547
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 548
    const-string v3, "Stats"

    const-string v4, "LoadStats: Old File %s exists."

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "stats.log"

    aput-object v34, v32, v33

    move-object/from16 v0, v32

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    const/16 v21, 0x1

    .line 551
    new-instance v29, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "stats.log"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 553
    .end local v28    # "statsOld":Ljava/io/DataInputStream;
    .local v29, "statsOld":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->readInt()I

    move-result v31

    .line 554
    .local v31, "version":I
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_7

    .line 555
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 557
    .local v2, "N":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    .line 558
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 559
    .local v17, "flattenName":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 561
    .local v6, "count":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    const-string v3, "Stats"

    const-string v4, "LoadStats: Component or package name is null or empty. skip it."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const/16 v3, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 567
    .local v25, "sep":I
    if-ltz v25, :cond_1

    add-int/lit8 v3, v25, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 568
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 569
    .local v22, "launchIntent":Landroid/content/Intent;
    if-nez v22, :cond_3

    .line 570
    const-string v3, "Stats"

    const-string v4, "LoadStats: package name: %s was not found."

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v17, v32, v33

    move-object/from16 v0, v32

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 598
    .end local v2    # "N":I
    .end local v6    # "count":I
    .end local v17    # "flattenName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v22    # "launchIntent":Landroid/content/Intent;
    .end local v25    # "sep":I
    .end local v31    # "version":I
    :catch_0
    move-exception v3

    move-object/from16 v28, v29

    .line 601
    .end local v15    # "f":Ljava/io/File;
    .end local v29    # "statsOld":Ljava/io/DataInputStream;
    .restart local v28    # "statsOld":Ljava/io/DataInputStream;
    :goto_2
    if-eqz v28, :cond_2

    .line 603
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 611
    :cond_2
    :goto_3
    if-eqz v21, :cond_a

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3, v13}, Lnet/oneplus/h2launcher/Stats;->access$600(Lnet/oneplus/h2launcher/Stats;Ljava/util/ArrayList;)Ljava/lang/Void;

    .line 614
    const/4 v3, 0x0

    .line 696
    :goto_4
    return-object v3

    .line 573
    .end local v28    # "statsOld":Ljava/io/DataInputStream;
    .restart local v2    # "N":I
    .restart local v6    # "count":I
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "flattenName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v22    # "launchIntent":Landroid/content/Intent;
    .restart local v25    # "sep":I
    .restart local v29    # "statsOld":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_3
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 584
    .end local v22    # "launchIntent":Landroid/content/Intent;
    .local v12, "componentName":Landroid/content/ComponentName;
    :cond_4
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 586
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "intentStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 588
    .local v7, "itemType":I
    const/4 v8, -0x1

    .line 590
    .local v8, "id":I
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v10

    .line 591
    .local v10, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v3, Lnet/oneplus/h2launcher/Stats$Stat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/Stats$Stat;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;IIJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .end local v7    # "itemType":I
    .end local v8    # "id":I
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 601
    .end local v2    # "N":I
    .end local v5    # "intentStr":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "flattenName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v25    # "sep":I
    .end local v31    # "version":I
    :catchall_0
    move-exception v3

    move-object/from16 v28, v29

    .end local v15    # "f":Ljava/io/File;
    .end local v29    # "statsOld":Ljava/io/DataInputStream;
    .restart local v28    # "statsOld":Ljava/io/DataInputStream;
    :goto_5
    if-eqz v28, :cond_5

    .line 603
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 606
    :cond_5
    :goto_6
    throw v3

    .line 575
    .end local v28    # "statsOld":Ljava/io/DataInputStream;
    .restart local v2    # "N":I
    .restart local v6    # "count":I
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "flattenName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v25    # "sep":I
    .restart local v29    # "statsOld":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_6
    :try_start_5
    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 576
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 577
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v32

    .line 576
    move-object/from16 v0, v32

    invoke-static {v3, v4, v12, v0}, Lnet/oneplus/h2launcher/Utilities;->isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 578
    const-string v3, "Stats"

    const-string v4, "LoadStats: component name: %s, user: %s was not found."

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    .line 579
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v34

    aput-object v34, v32, v33

    .line 578
    move-object/from16 v0, v32

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 594
    .end local v2    # "N":I
    .end local v6    # "count":I
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "flattenName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v25    # "sep":I
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v24

    .line 595
    .local v24, "result":Z
    const-string v4, "Stats"

    const-string v32, "Stat log %s removed"

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    if-eqz v24, :cond_9

    const-string v3, "has"

    :goto_7
    aput-object v3, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v28, v29

    .line 601
    .end local v24    # "result":Z
    .end local v29    # "statsOld":Ljava/io/DataInputStream;
    .end local v31    # "version":I
    .restart local v28    # "statsOld":Ljava/io/DataInputStream;
    :cond_8
    if-eqz v28, :cond_2

    .line 603
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 604
    :catch_1
    move-exception v14

    .line 605
    .local v14, "e":Ljava/io/IOException;
    const-string v3, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 595
    .end local v14    # "e":Ljava/io/IOException;
    .end local v28    # "statsOld":Ljava/io/DataInputStream;
    .restart local v24    # "result":Z
    .restart local v29    # "statsOld":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_9
    :try_start_7
    const-string v3, "wasn\'t"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 604
    .end local v15    # "f":Ljava/io/File;
    .end local v24    # "result":Z
    .end local v29    # "statsOld":Ljava/io/DataInputStream;
    .end local v31    # "version":I
    .restart local v28    # "statsOld":Ljava/io/DataInputStream;
    :catch_2
    move-exception v14

    .line 605
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v3, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 604
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 605
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v4, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 619
    .end local v14    # "e":Ljava/io/IOException;
    :cond_a
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 620
    const-string v16, "stats_simplified.log"

    .line 624
    .local v16, "fileName":Ljava/lang/String;
    :goto_8
    const/16 v26, 0x0

    .line 625
    .local v26, "stats":Ljava/io/DataInputStream;
    const/16 v18, 0x0

    .line 628
    .local v18, "hasInvalidComponent":Z
    :try_start_8
    new-instance v27, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 630
    .end local v26    # "stats":Ljava/io/DataInputStream;
    .local v27, "stats":Ljava/io/DataInputStream;
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v31

    .line 631
    .restart local v31    # "version":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_f

    .line 632
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 633
    .restart local v2    # "N":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_9
    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    .line 634
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 635
    .restart local v5    # "intentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/Stats;->getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 636
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 637
    .restart local v6    # "count":I
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 638
    .restart local v7    # "itemType":I
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 640
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    .line 641
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    .line 640
    invoke-static {v3, v7, v12, v4}, Lnet/oneplus/h2launcher/Utilities;->isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 642
    const-string v3, "Stats"

    const-string v4, "LoadStats: component name: %s, user: %s was not found."

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    .line 643
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v34

    aput-object v34, v32, v33

    .line 642
    move-object/from16 v0, v32

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 644
    const/16 v18, 0x1

    .line 633
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 622
    .end local v2    # "N":I
    .end local v5    # "intentStr":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "itemType":I
    .end local v8    # "id":J
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "fileName":Ljava/lang/String;
    .end local v18    # "hasInvalidComponent":Z
    .end local v19    # "i":I
    .end local v27    # "stats":Ljava/io/DataInputStream;
    .end local v31    # "version":I
    :cond_b
    const-string v16, "stats_standard.log"

    .restart local v16    # "fileName":Ljava/lang/String;
    goto :goto_8

    .line 648
    .restart local v2    # "N":I
    .restart local v5    # "intentStr":Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v7    # "itemType":I
    .restart local v8    # "id":J
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "hasInvalidComponent":Z
    .restart local v19    # "i":I
    .restart local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_c
    :try_start_a
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v10

    .line 649
    .restart local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v3, Lnet/oneplus/h2launcher/Stats$Stat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/Stats$Stat;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;IIJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    .line 678
    .end local v2    # "N":I
    .end local v5    # "intentStr":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "itemType":I
    .end local v8    # "id":J
    .end local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v19    # "i":I
    .end local v31    # "version":I
    :catch_4
    move-exception v3

    move-object/from16 v26, v27

    .line 681
    .end local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v26    # "stats":Ljava/io/DataInputStream;
    :goto_b
    if-eqz v26, :cond_d

    .line 683
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 691
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 692
    if-eqz v18, :cond_e

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3, v13}, Lnet/oneplus/h2launcher/Stats;->access$600(Lnet/oneplus/h2launcher/Stats;Ljava/util/ArrayList;)Ljava/lang/Void;

    .line 696
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 651
    .end local v26    # "stats":Ljava/io/DataInputStream;
    .restart local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_12

    .line 652
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 653
    .restart local v2    # "N":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_d
    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    .line 654
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5    # "intentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/Stats;->getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 656
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 657
    .restart local v6    # "count":I
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 658
    .restart local v7    # "itemType":I
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 659
    .restart local v8    # "id":J
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v30

    .line 661
    .local v30, "userStr":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 662
    .local v11, "byt":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v23

    .line 663
    .local v23, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 664
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 666
    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(Landroid/os/Parcel;)V

    invoke-static {v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v10

    .line 667
    .restart local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v12, v10}, Lnet/oneplus/h2launcher/Utilities;->isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 670
    const-string v3, "Stats"

    const-string v4, "loadStats: component name: %s, user: %s was not found."

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    aput-object v10, v32, v33

    move-object/from16 v0, v32

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    const/16 v18, 0x1

    .line 653
    :goto_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    .line 675
    :cond_10
    new-instance v3, Lnet/oneplus/h2launcher/Stats$Stat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$LoadStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/Stats$Stat;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;IIJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_e

    .line 681
    .end local v2    # "N":I
    .end local v5    # "intentStr":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "itemType":I
    .end local v8    # "id":J
    .end local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v11    # "byt":[B
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v19    # "i":I
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v30    # "userStr":Ljava/lang/String;
    .end local v31    # "version":I
    :catchall_1
    move-exception v3

    move-object/from16 v26, v27

    .end local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v26    # "stats":Ljava/io/DataInputStream;
    :goto_f
    if-eqz v26, :cond_11

    .line 683
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 686
    :cond_11
    :goto_10
    throw v3

    .line 681
    .end local v26    # "stats":Ljava/io/DataInputStream;
    .restart local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_12
    if-eqz v27, :cond_13

    .line 683
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    move-object/from16 v26, v27

    .line 686
    .end local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v26    # "stats":Ljava/io/DataInputStream;
    goto/16 :goto_c

    .line 684
    .end local v26    # "stats":Ljava/io/DataInputStream;
    .restart local v27    # "stats":Ljava/io/DataInputStream;
    :catch_5
    move-exception v14

    .line 685
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v3, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, v27

    .line 686
    .end local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v26    # "stats":Ljava/io/DataInputStream;
    goto/16 :goto_c

    .line 684
    .end local v14    # "e":Ljava/io/IOException;
    .end local v31    # "version":I
    :catch_6
    move-exception v14

    .line 685
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v3, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 684
    .end local v14    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v14

    .line 685
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v4, "Stats"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 681
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    goto :goto_f

    .line 678
    :catch_8
    move-exception v3

    goto/16 :goto_b

    .line 601
    .end local v16    # "fileName":Ljava/lang/String;
    .end local v18    # "hasInvalidComponent":Z
    .end local v26    # "stats":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v3

    goto/16 :goto_5

    .line 598
    :catch_9
    move-exception v3

    goto/16 :goto_2

    .restart local v16    # "fileName":Ljava/lang/String;
    .restart local v18    # "hasInvalidComponent":Z
    .restart local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v31    # "version":I
    :cond_13
    move-object/from16 v26, v27

    .end local v27    # "stats":Ljava/io/DataInputStream;
    .restart local v26    # "stats":Ljava/io/DataInputStream;
    goto/16 :goto_c
.end method
