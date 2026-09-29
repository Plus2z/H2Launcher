.class Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
.super Ljava/lang/Object;
.source "MigrateFromRestoreTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptimalPlacementSolution"
.end annotation


# instance fields
.field finalPlacedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreMove:Z

.field private final itemsToPlace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field lowestMoveCost:F

.field lowestWeightLoss:F

.field private final occupied:[[Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;)V
    .locals 1
    .param p2, "occupied"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "itemsToPlace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;Z)V

    .line 364
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;Z)V
    .locals 1
    .param p2, "occupied"    # [[Z
    .param p4, "ignoreMove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "itemsToPlace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 367
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 359
    iput v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 368
    iput-object p2, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    .line 369
    iput-object p3, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    .line 370
    iput-boolean p4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->ignoreMove:Z

    .line 373
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 374
    return-void
.end method


# virtual methods
.method public find()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v2, v2, v1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 378
    return-void
.end method

.method public find(IFFLjava/util/ArrayList;)V
    .locals 26
    .param p1, "index"    # I
    .param p2, "weightLoss"    # F
    .param p3, "moveCost"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p4, "itemsPlaced":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v4, p2, v4

    if-gez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestMoveCost:F

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_2

    .line 396
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 397
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 400
    invoke-static/range {p4 .. p4}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 404
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 405
    .local v19, "me":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    move-object/from16 v0, v19

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    move/from16 v20, v0

    .line 406
    .local v20, "myX":I
    move-object/from16 v0, v19

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    move/from16 v21, v0

    .line 409
    .local v21, "myY":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .local v18, "itemsIncludingMe":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_d

    .line 417
    :cond_3
    move-object/from16 v0, v19

    iget v8, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 418
    .local v8, "myW":I
    move-object/from16 v0, v19

    iget v9, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 420
    .local v9, "myH":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    if-ge v7, v4, :cond_c

    .line 421
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    if-ge v6, v4, :cond_b

    .line 422
    move/from16 v23, p3

    .line 423
    .local v23, "newMoveCost":F
    move/from16 v0, v20

    if-eq v6, v0, :cond_4

    .line 424
    move-object/from16 v0, v19

    iput v6, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 425
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v23, v23, v4

    .line 427
    :cond_4
    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    .line 428
    move-object/from16 v0, v19

    iput v7, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 429
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v23, v23, v4

    .line 431
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v4, :cond_6

    .line 432
    move/from16 v23, p3

    .line 435
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->isVacant([[ZIIII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 438
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v23

    move-object/from16 v3, v18

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 443
    :cond_7
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    if-le v8, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    add-int/lit8 v14, v8, -0x1

    move v12, v6

    move v13, v7

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->isVacant([[ZIIII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 444
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 447
    add-int/lit8 v4, p1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v5, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 449
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 453
    :cond_8
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    if-le v9, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    add-int/lit8 v15, v9, -0x1

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->isVacant([[ZIIII)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 454
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 457
    add-int/lit8 v4, p1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v5, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 459
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 463
    :cond_9
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    if-le v9, v4, :cond_a

    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    if-le v8, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    add-int/lit8 v14, v8, -0x1

    add-int/lit8 v15, v9, -0x1

    move v12, v6

    move v13, v7

    .line 464
    invoke-virtual/range {v10 .. v15}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->isVacant([[ZIIII)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 465
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 466
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 469
    add-int/lit8 v4, p1, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    add-float v5, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v5, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 471
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 472
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 474
    :cond_a
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 475
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 421
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 420
    .end local v23    # "newMoveCost":F
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 482
    .end local v6    # "x":I
    :cond_c
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    add-float v5, v5, p2

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v5, v1, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 487
    .end local v7    # "y":I
    .end local v8    # "myW":I
    .end local v9    # "myH":I
    :cond_d
    const v22, 0x7fffffff

    .line 488
    .local v22, "newDistance":I
    const v24, 0x7fffffff

    .local v24, "newX":I
    const v25, 0x7fffffff

    .line 490
    .local v25, "newY":I
    const/4 v7, 0x0

    .restart local v7    # "y":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    if-ge v7, v4, :cond_11

    .line 491
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    if-ge v6, v4, :cond_10

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    aget-object v4, v4, v6

    aget-boolean v4, v4, v7

    if-nez v4, :cond_e

    .line 493
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v4, :cond_f

    const/16 v16, 0x0

    .line 495
    .local v16, "dist":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 496
    move/from16 v24, v6

    .line 497
    move/from16 v25, v7

    .line 498
    move/from16 v22, v16

    .line 491
    .end local v16    # "dist":I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 493
    :cond_f
    move-object/from16 v0, v19

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    sub-int/2addr v4, v6

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    sub-int/2addr v5, v7

    move-object/from16 v0, v19

    iget v10, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    sub-int/2addr v10, v7

    mul-int/2addr v5, v10

    add-int v16, v4, v5

    goto :goto_5

    .line 490
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 504
    .end local v6    # "x":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    move/from16 v0, v25

    if-ge v0, v4, :cond_15

    .line 505
    move/from16 v23, p3

    .line 506
    .restart local v23    # "newMoveCost":F
    move/from16 v0, v24

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 507
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 508
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v23, v23, v4

    .line 510
    :cond_12
    move/from16 v0, v25

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    .line 511
    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 512
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v23, v23, v4

    .line 514
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v4, :cond_14

    .line 515
    move/from16 v23, p3

    .line 517
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 518
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v23

    move-object/from16 v3, v18

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->this$0:Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->occupied:[[Z

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v10}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    .line 520
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 521
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 529
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    .line 530
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->ignoreMove:Z

    if-nez v4, :cond_0

    .line 531
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    add-float v5, v5, p2

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v5, v1, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 535
    .end local v23    # "newMoveCost":F
    :cond_15
    add-int/lit8 v17, p1, 0x1

    .local v17, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_16

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    iget v4, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    add-float p2, p2, v4

    .line 535
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 538
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v19

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    add-float v5, v5, p2

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v5, v1, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    goto/16 :goto_0
.end method
