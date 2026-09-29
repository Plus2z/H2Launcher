.class Lnet/oneplus/h2launcher/Stats$SaveStats;
.super Landroid/os/AsyncTask;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveStats"
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
.field currentStateCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/Stats$Stat;",
            ">;"
        }
    .end annotation
.end field

.field id:J

.field intentStr:Ljava/lang/String;

.field itemType:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;

.field user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;Landroid/view/View;Ljava/lang/String;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "si"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p5, "id"    # J
    .param p7, "itemType"    # I
    .param p8, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 420
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    .line 421
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 422
    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->view:Landroid/view/View;

    .line 423
    iput-object p3, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->intentStr:Ljava/lang/String;

    .line 424
    iput-wide p5, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->id:J

    .line 425
    iput p7, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    .line 426
    iput-object p8, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 427
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Stats$SaveStats;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 487
    const-string v0, "Stats"

    const-string v1, "SaveStats doInBackground..."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats$SaveStats;->currentStateCopy:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Stats;->access$600(Lnet/oneplus/h2launcher/Stats;Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 18

    .prologue
    .line 431
    const-string v3, "Stats"

    const-string v4, "SaveStats onPreExecute..."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->intentStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Stats;->getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 435
    .local v2, "componentName":Landroid/content/ComponentName;
    const/4 v12, 0x1

    .line 436
    .local v12, "isStatsChanged":Z
    const/4 v13, 0x0

    .line 437
    .local v13, "isUpdated":Z
    const/4 v15, 0x0

    .line 438
    .local v15, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    const/4 v11, 0x1

    .line 439
    .local v11, "indexZero":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    check-cast v15, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 441
    .restart local v15    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v3, v15, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    if-nez v3, :cond_0

    iget-object v3, v15, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    .line 442
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->id:J

    iget-wide v6, v15, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 446
    :cond_2
    iget v3, v15, Lnet/oneplus/h2launcher/Stats$Stat;->launchCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v15, Lnet/oneplus/h2launcher/Stats$Stat;->launchCount:I

    .line 448
    if-eqz v11, :cond_6

    .line 449
    const/4 v12, 0x0

    .line 454
    :goto_1
    const/4 v13, 0x1

    .line 461
    :cond_3
    if-eqz v12, :cond_8

    if-nez v13, :cond_8

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v3, Lnet/oneplus/h2launcher/Stats$Stat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->intentStr:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->itemType:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/Stats$Stat;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;IIJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 469
    :cond_4
    :goto_2
    if-eqz v12, :cond_5

    .line 470
    const-string v3, "Stats"

    const-string v4, "SaveStats onPreExecute isStatsChanged"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$500(Lnet/oneplus/h2launcher/Stats;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/Stats$SaveStats$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lnet/oneplus/h2launcher/Stats$SaveStats$1;-><init>(Lnet/oneplus/h2launcher/Stats$SaveStats;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->currentStateCopy:Ljava/util/ArrayList;

    .line 483
    return-void

    .line 451
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 458
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 464
    :cond_8
    if-eqz v12, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$SaveStats;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Stats;->access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method
