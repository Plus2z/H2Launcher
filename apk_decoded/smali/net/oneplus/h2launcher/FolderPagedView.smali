.class public Lnet/oneplus/h2launcher/FolderPagedView;
.super Lnet/oneplus/h2launcher/PagedView;
.source "FolderPagedView.java"


# static fields
.field private static final ALLOW_FOLDER_SCROLL:Z = true

.field private static final PAGE_INDICATOR_ANIMATION_DURATION:I = 0x190

.field private static final PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final PAGE_INDICATOR_ANIMATION_START_DELAY:I = 0x12c

.field private static final PAGE_INDICATOR_OVERSHOOT_TENSION:F = 4.9f

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final SCROLL_HINT_FRACTION:F = 0.07f

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final sTempPosArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private mFocusIndicatorView:Lnet/oneplus/h2launcher/FocusIndicatorView;

.field private mFolder:Lnet/oneplus/h2launcher/Folder;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field private mKeyListener:Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

.field final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    .line 87
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 89
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    .line 90
    .local v1, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v2, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderColumns:I

    iput v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountX:I

    .line 91
    iget v2, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderRows:I

    iput v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountY:I

    .line 93
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountX:I

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mIsRtl:Z

    .line 98
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->setImportantForAccessibility(I)V

    .line 100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->setEdgeGlowColor(I)V

    .line 101
    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 25
    .param p2, "itemCount"    # I
    .param p3, "saveChanges"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v20, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout;

    .line 336
    .local v18, "page":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->removeAllViews()V

    .line 337
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 339
    .end local v18    # "page":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->setupContentDimensions(I)V

    .line 341
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 342
    .local v19, "pageItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/CellLayout;>;"
    const/4 v11, 0x0

    .line 344
    .local v11, "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    const/16 v21, 0x0

    .line 347
    .local v21, "position":I
    const/16 v22, 0x0

    .line 348
    .local v22, "rank":I
    const/4 v10, 0x0

    .line 349
    .local v10, "availablePageCount":I
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_8

    .line 350
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v12, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v24, v2

    .line 351
    .local v24, "v":Landroid/view/View;
    :goto_2
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_2

    .line 353
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v11, Lnet/oneplus/h2launcher/CellLayout;

    .line 358
    .restart local v11    # "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    :goto_3
    const/16 v21, 0x0

    .line 359
    add-int/lit8 v10, v10, 0x1

    .line 362
    :cond_2
    if-eqz v24, :cond_5

    .line 363
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 364
    .local v14, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v15, v21, v2

    .line 365
    .local v15, "newX":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v16, v21, v2

    .line 366
    .local v16, "newY":I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 367
    .local v3, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    if-ne v2, v15, :cond_3

    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    move/from16 v0, v22

    if-eq v2, v0, :cond_4

    .line 368
    :cond_3
    iput v15, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 369
    move/from16 v0, v16

    iput v0, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 370
    move/from16 v0, v22

    iput v0, v3, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 371
    if-eqz p3, :cond_4

    .line 372
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v9, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static/range {v2 .. v9}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 376
    :cond_4
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iput v2, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 377
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iput v2, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 378
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 379
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v7

    const/4 v9, 0x1

    move-object v4, v11

    move-object/from16 v5, v24

    move-object v8, v14

    .line 378
    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 381
    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    move-object/from16 v0, v24

    instance-of v2, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v2, :cond_5

    .line 382
    check-cast v24, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local v24    # "v":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 386
    .end local v3    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v14    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v15    # "newX":I
    .end local v16    # "newY":I
    :cond_5
    add-int/lit8 v22, v22, 0x1

    .line 387
    add-int/lit8 v21, v21, 0x1

    .line 349
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 350
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 356
    .restart local v24    # "v":Landroid/view/View;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->createAndAddNewPage()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v11

    goto/16 :goto_3

    .line 391
    .end local v24    # "v":Landroid/view/View;
    :cond_8
    const/16 v23, 0x0

    .line 392
    .local v23, "removed":Z
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 394
    const/16 v23, 0x1

    goto :goto_4

    .line 396
    :cond_9
    if-eqz v23, :cond_b

    .line 397
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v17

    .line 398
    .local v17, "nowPage":I
    add-int/lit8 v13, v10, -0x1

    .line 399
    .local v13, "lastPage":I
    if-gez v13, :cond_a

    .line 400
    const/4 v13, 0x0

    .line 402
    :cond_a
    move/from16 v0, v17

    if-le v0, v13, :cond_b

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/oneplus/h2launcher/FolderPagedView;->setCurrentPage(I)V

    .line 407
    .end local v13    # "lastPage":I
    .end local v17    # "nowPage":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_c

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->setEnableOverscroll(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_d

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/PageIndicator;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v4, v2, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x5

    :goto_7
    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/ExtendedEditText;->setGravity(I)V

    .line 414
    return-void

    .line 407
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 410
    :cond_d
    const/16 v2, 0x8

    goto :goto_6

    .line 412
    :cond_e
    const/4 v2, 0x3

    goto :goto_7

    :cond_f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method private createAndAddNewPage()Lnet/oneplus/h2launcher/CellLayout;
    .locals 5

    .prologue
    .line 267
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 268
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    new-instance v1, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, "page":Lnet/oneplus/h2launcher/CellLayout;
    iget v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellWidthPx:I

    iget v3, v0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellHeightPx:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->setCellDimensions(II)V

    .line 270
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 271
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 272
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setInvertIfRtl(Z)V

    .line 273
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->setGridSize(II)V

    .line 275
    const/4 v2, -0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-object v1
.end method

.method private setupContentDimensions(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 116
    iput p1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mAllocatedContentSize:I

    .line 118
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    if-lt p1, v5, :cond_3

    .line 119
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountX:I

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    .line 120
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountY:I

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    .line 121
    const/4 v0, 0x1

    .line 126
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_8

    .line 127
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    .line 128
    .local v2, "oldCountX":I
    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    .line 129
    .local v3, "oldCountY":I
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    mul-int/2addr v5, v6

    if-ge v5, p1, :cond_5

    .line 131
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    if-le v5, v6, :cond_0

    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountY:I

    if-ne v5, v6, :cond_4

    :cond_0
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountX:I

    if-ge v5, v6, :cond_4

    .line 132
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    .line 136
    :cond_1
    :goto_1
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    if-nez v5, :cond_2

    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    .line 142
    :cond_2
    :goto_2
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    if-ne v5, v2, :cond_7

    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    if-ne v5, v3, :cond_7

    const/4 v0, 0x1

    .line 143
    :goto_3
    goto :goto_0

    .line 123
    .end local v0    # "done":Z
    .end local v2    # "oldCountX":I
    .end local v3    # "oldCountY":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "done":Z
    goto :goto_0

    .line 133
    .restart local v2    # "oldCountX":I
    .restart local v3    # "oldCountY":I
    :cond_4
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxCountY:I

    if-ge v5, v6, :cond_1

    .line 134
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    goto :goto_1

    .line 137
    :cond_5
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    mul-int/2addr v5, v6

    if-lt v5, p1, :cond_6

    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    if-lt v5, v6, :cond_6

    .line 138
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    goto :goto_2

    .line 139
    :cond_6
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    mul-int/2addr v5, v6

    if-lt v5, p1, :cond_2

    .line 140
    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    goto :goto_2

    :cond_7
    move v0, v4

    .line 142
    goto :goto_3

    .line 146
    .end local v2    # "oldCountX":I
    .end local v3    # "oldCountY":I
    :cond_8
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_9

    .line 147
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    iget v5, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->setGridSize(II)V

    .line 146
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 149
    :cond_9
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "rank"    # I

    .prologue
    .line 215
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v7, p3, v0

    .line 216
    .local v7, "pagePos":I
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v6, p3, v0

    .line 218
    .local v6, "pageNo":I
    iput p3, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    .line 219
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v0, v7, v0

    iput v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 220
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v0, v7, v0

    iput v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 223
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 224
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 225
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 226
    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    .line 225
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 227
    return-void
.end method

.method public allocateRankForNewItem(Lnet/oneplus/h2launcher/ShortcutInfo;)I
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 196
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getItemCount()I

    move-result v0

    .line 197
    .local v0, "rank":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 200
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v0, v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->setCurrentPage(I)V

    .line 201
    return v0
.end method

.method public animateMarkers()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 718
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/PageIndicator;->getChildCount()I

    move-result v0

    .line 719
    .local v0, "count":I
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x409ccccd    # 4.9f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 720
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 721
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 722
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    .line 723
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x96

    add-int/lit16 v4, v4, 0x12c

    int-to-long v4, v4

    .line 724
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 329
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "extra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 163
    .local v2, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v2    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lnet/oneplus/h2launcher/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 167
    return-object v0
.end method

.method public bindNewItems(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 174
    .local v4, "rank":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/FolderPagedView;->setupContentDimensions(I)V

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 176
    .local v1, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v3, v4, v6

    .line 177
    .local v3, "pagePos":I
    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v4, v6

    .line 179
    .local v2, "pageNo":I
    iput v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    .line 180
    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v6, v3, v6

    iput v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 181
    iget v6, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v6, v3, v6

    iput v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 183
    goto :goto_0

    .line 184
    .end local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v2    # "pageNo":I
    .end local v3    # "pagePos":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 185
    .restart local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    .end local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6}, Lnet/oneplus/h2launcher/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 188
    return-void
.end method

.method public clearScrollHint()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 4

    .prologue
    .line 542
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 544
    .local v1, "pendingViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 545
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    .end local v1    # "pendingViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lnet/oneplus/h2launcher/ShortcutInfo;I)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "rank"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderPagedView;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "icon":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/FolderPagedView;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    .line 207
    return-object v0
.end method

.method public createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
    .locals 7
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 232
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDynamicIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 233
    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0100

    invoke-interface {v2, v3, v6, v5, v4}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;

    move-result-object v1

    .line 238
    .local v1, "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    :goto_0
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 239
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 240
    .local v0, "deviceProfile":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 241
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 243
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFocusIndicatorView:Lnet/oneplus/h2launcher/FocusIndicatorView;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mKeyListener:Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 246
    new-instance v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v3, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iget v4, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iget v5, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    iget v6, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-object v1

    .line 235
    .end local v0    # "deviceProfile":Lnet/oneplus/h2launcher/DeviceProfile;
    .end local v1    # "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040057

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView;

    .restart local v1    # "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    goto :goto_0
.end method

.method public findNearestArea(II)I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 440
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v6

    .line 441
    .local v6, "pageIndex":I
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 442
    .local v0, "page":Lnet/oneplus/h2launcher/CellLayout;
    sget-object v5, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    .line 443
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v2

    sget-object v4, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    aget v4, v4, v7

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v7

    .line 446
    :cond_0
    iget v1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mAllocatedContentSize:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v6

    sget-object v4, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    aget v3, v4, v3

    iget v4, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public finishUpdateDynamicIconState()V
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v0

    .line 748
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 749
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 750
    .local v2, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->finishUpdateDynamicIconState()V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    .end local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return-void
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 493
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    .line 494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 493
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mAllocatedContentSize:I

    return v0
.end method

.method protected getChildGap()I
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 423
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 418
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected getEdgeVerticalPostion([I)V
    .locals 2
    .param p1, "pos"    # [I

    .prologue
    const/4 v0, 0x0

    .line 735
    aput v0, p1, v0

    .line 736
    const/4 v0, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getViewportHeight()I

    move-result v1

    aput v1, p1, v0

    .line 737
    return-void
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 428
    .local v0, "lastPageIndex":I
    if-gez v0, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 432
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 4

    .prologue
    .line 461
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 462
    const/4 v2, 0x0

    .line 469
    :goto_0
    return-object v2

    .line 464
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 465
    .local v0, "lastContainer":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 466
    .local v1, "lastRank":I
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    if-lez v2, :cond_1

    .line 467
    iget v2, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v2, v1, v2

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 452
    new-instance v0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    const v1, 0x7f020115

    const v2, 0x7f020117

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;-><init>(II)V

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public itemsPerPage()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 6
    .param p1, "op"    # Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    .prologue
    .line 478
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 479
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v3

    .line 480
    .local v3, "page":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 482
    invoke-virtual {v3, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 483
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-interface {p1, v5, v4, p0}, Lnet/oneplus/h2launcher/Workspace$ItemOperator;->evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "v":Landroid/view/View;
    :goto_3
    return-object v4

    .line 481
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 480
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "j":I
    .end local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->notifyPageSwitchListener()V

    .line 510
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->updateTextViewFocus()V

    .line 513
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->updateDynamicIconState()V

    .line 514
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    .line 558
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onPageBeginMoving()V

    .line 559
    sget-object v1, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getVisiblePages([I)V

    .line 560
    sget-object v1, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnet/oneplus/h2launcher/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    .line 561
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method public rankOnCurrentPage(I)Z
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 552
    iget v1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, p1, v1

    .line 553
    .local v0, "p":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public realTimeReorder(II)V
    .locals 33
    .param p1, "empty"    # I
    .param p2, "target"    # I

    .prologue
    .line 586
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->completePendingPageChanges()V

    .line 587
    const/4 v9, 0x0

    .line 588
    .local v9, "delay":I
    const/high16 v12, 0x41f00000    # 30.0f

    .line 591
    .local v12, "delayAmount":F
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v28

    .line 593
    .local v28, "pageToAnimate":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v27, p2, v6

    .line 594
    .local v27, "pageT":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v26, p2, v6

    .line 596
    .local v26, "pagePosT":I
    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 597
    const-string v6, "FolderPagedView"

    const-string v7, "Cannot animate when the target cell is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v25, p1, v6

    .line 600
    .local v25, "pagePosE":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v23, p1, v6

    .line 606
    .local v23, "pageE":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 705
    :cond_1
    return-void

    .line 609
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    .line 611
    const/4 v13, 0x1

    .line 614
    .local v13, "direction":I
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 615
    move/from16 v18, p1

    .line 617
    .local v18, "moveStart":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v17, v28, v6

    .line 620
    .local v17, "moveEnd":I
    const/16 v30, 0x0

    .line 626
    .local v30, "startPos":I
    :goto_0
    move/from16 v15, v26

    .line 648
    .local v15, "endPos":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 649
    add-int v29, v18, v13

    .line 650
    .local v29, "rankToMove":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    div-int v22, v29, v6

    .line 651
    .local v22, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v24, v29, v6

    .line 652
    .local v24, "pagePos":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v31, v24, v6

    .line 653
    .local v31, "x":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v32, v24, v6

    .line 655
    .local v32, "y":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 656
    .local v4, "page":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 657
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 658
    move/from16 v0, v28

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 659
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 660
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    .line 684
    :cond_3
    :goto_2
    move/from16 v18, v29

    .line 685
    goto :goto_1

    .line 622
    .end local v4    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .end local v5    # "v":Landroid/view/View;
    .end local v15    # "endPos":I
    .end local v17    # "moveEnd":I
    .end local v18    # "moveStart":I
    .end local v22    # "p":I
    .end local v24    # "pagePos":I
    .end local v29    # "rankToMove":I
    .end local v30    # "startPos":I
    .end local v31    # "x":I
    .end local v32    # "y":I
    :cond_4
    const/16 v17, -0x1

    .restart local v17    # "moveEnd":I
    move/from16 v18, v17

    .line 623
    .restart local v18    # "moveStart":I
    move/from16 v30, v25

    .restart local v30    # "startPos":I
    goto :goto_0

    .line 629
    .end local v13    # "direction":I
    .end local v17    # "moveEnd":I
    .end local v18    # "moveStart":I
    .end local v30    # "startPos":I
    :cond_5
    const/4 v13, -0x1

    .line 631
    .restart local v13    # "direction":I
    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 633
    move/from16 v18, p1

    .line 635
    .restart local v18    # "moveStart":I
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v6, v7

    add-int/lit8 v17, v6, -0x1

    .line 638
    .restart local v17    # "moveEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v30, v6, -0x1

    .line 644
    .restart local v30    # "startPos":I
    :goto_3
    move/from16 v15, v26

    .restart local v15    # "endPos":I
    goto :goto_1

    .line 640
    .end local v15    # "endPos":I
    .end local v17    # "moveEnd":I
    .end local v18    # "moveStart":I
    .end local v30    # "startPos":I
    :cond_6
    const/16 v17, -0x1

    .restart local v17    # "moveEnd":I
    move/from16 v18, v17

    .line 641
    .restart local v18    # "moveStart":I
    move/from16 v30, v25

    .restart local v30    # "startPos":I
    goto :goto_3

    .line 663
    .restart local v4    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v5    # "v":Landroid/view/View;
    .restart local v15    # "endPos":I
    .restart local v22    # "p":I
    .restart local v24    # "pagePos":I
    .restart local v29    # "rankToMove":I
    .restart local v31    # "x":I
    .restart local v32    # "y":I
    :cond_7
    move/from16 v19, v18

    .line 664
    .local v19, "newRank":I
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v21

    .line 666
    .local v21, "oldTranslateX":F
    new-instance v14, Lnet/oneplus/h2launcher/FolderPagedView$1;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v14, v0, v5, v1, v2}, Lnet/oneplus/h2launcher/FolderPagedView$1;-><init>(Lnet/oneplus/h2launcher/FolderPagedView;Landroid/view/View;FI)V

    .line 676
    .local v14, "endAction":Ljava/lang/Runnable;
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-lez v13, :cond_8

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v6, v8

    if-eqz v6, :cond_9

    .line 677
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    :goto_5
    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0xe6

    .line 678
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0x0

    .line 679
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 680
    invoke-virtual {v6, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 681
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 676
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 677
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_5

    .line 687
    .end local v4    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .end local v5    # "v":Landroid/view/View;
    .end local v14    # "endAction":Ljava/lang/Runnable;
    .end local v19    # "newRank":I
    .end local v21    # "oldTranslateX":F
    .end local v22    # "p":I
    .end local v24    # "pagePos":I
    .end local v29    # "rankToMove":I
    .end local v31    # "x":I
    .end local v32    # "y":I
    :cond_a
    sub-int v6, v15, v30

    mul-int/2addr v6, v13

    if-lez v6, :cond_1

    .line 692
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 693
    .restart local v4    # "page":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v16, v30

    .local v16, "i":I
    :goto_6
    move/from16 v0, v16

    if-eq v0, v15, :cond_1

    .line 694
    add-int v20, v16, v13

    .line 695
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v6, v20, v6

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v7, v20, v7

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 696
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_b

    .line 697
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    iget v7, v6, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    sub-int/2addr v7, v13

    iput v7, v6, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 699
    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    rem-int v6, v16, v6

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mGridCountX:I

    div-int v7, v16, v7

    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 701
    int-to-float v6, v9

    add-float/2addr v6, v12

    float-to-int v9, v6

    .line 702
    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v12, v6

    .line 693
    :cond_c
    add-int v16, v16, v13

    goto :goto_6
.end method

.method public removeCellLayoutView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 258
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 257
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 312
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public setChildTextColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 301
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 302
    .local v2, "page":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 303
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 304
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v4, :cond_0

    .line 305
    check-cast v3, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextColor(I)V

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "j":I
    .end local v2    # "page":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    return-void
.end method

.method public setFixedSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 286
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 287
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/CellLayout;->setFixedSize(II)V

    .line 287
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 505
    :cond_0
    return-void
.end method

.method public setFolder(Lnet/oneplus/h2launcher/Folder;)V
    .locals 1
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 105
    const v0, 0x7f11014b

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FocusIndicatorView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mFocusIndicatorView:Lnet/oneplus/h2launcher/FocusIndicatorView;

    .line 106
    new-instance v0, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mKeyListener:Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;

    .line 108
    return-void
.end method

.method public setMarkerScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 708
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/PageIndicator;->getChildCount()I

    move-result v0

    .line 709
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 710
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "marker":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 712
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 713
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    .end local v2    # "marker":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setScaledSize()V
    .locals 6

    .prologue
    .line 293
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 294
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 295
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    iget v3, v0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellWidthPx:I

    iget v4, v0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellHeightPx:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->setCellDimensions(II)V

    .line 294
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method public showScrollHint(I)V
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 520
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    const v6, -0x4270a3d7    # -0.07f

    .line 522
    .local v6, "fraction":F
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v7, v0

    .line 523
    .local v7, "hint":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getScrollForPage(I)I

    move-result v0

    add-int v8, v0, v7

    .line 524
    .local v8, "scroll":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 525
    .local v3, "delta":I
    if-eqz v3, :cond_0

    .line 526
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 527
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getScrollX()I

    move-result v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherScroller;->startScroll(IIIII)V

    .line 528
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->invalidate()V

    .line 530
    :cond_0
    return-void

    .end local v3    # "delta":I
    .end local v6    # "fraction":F
    .end local v7    # "hint":I
    .end local v8    # "scroll":I
    :cond_1
    move v0, v2

    .line 520
    goto :goto_0

    :cond_2
    const v6, 0x3d8f5c29    # 0.07f

    goto :goto_1
.end method

.method public updateDynamicIconState()V
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderPagedView;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 741
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->updateDynamicIconState()V

    .line 744
    :cond_0
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 4
    .param p1, "pageNo"    # I

    .prologue
    .line 569
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    .line 570
    .local v1, "page":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 572
    .local v2, "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 573
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 576
    .end local v0    # "i":I
    .end local v2    # "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    :cond_0
    return-void
.end method
