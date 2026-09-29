.class public Lnet/oneplus/h2launcher/FolderContent;
.super Landroid/widget/LinearLayout;
.source "FolderContent.java"


# static fields
.field static final GRID_COUNT_X:I = 0x4

.field static final GRID_COUNT_Y:I = 0x3

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final sTempPosArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mContentHeight:I

.field private final mContentWidth:I

.field private mFolder:Lnet/oneplus/h2launcher/Folder;

.field private mGridCountX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mGridCountY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field private final mMaxItemsPerPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

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
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    .line 34
    const-class v0, Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/FolderContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FolderContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FolderContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mPendingAnimations:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 65
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mIsRtl:Z

    .line 70
    const v2, 0x7f0c0261

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0c024e

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentWidth:I

    .line 72
    const v2, 0x7f0c0251

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0c024f

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentHeight:I

    .line 75
    const v2, 0x7fffffff

    iput v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    .line 76
    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 23
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
    .line 213
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v19, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/oneplus/h2launcher/FolderContent;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/CellLayout;

    .line 216
    .local v17, "page":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/CellLayout;->removeAllViews()V

    .line 217
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 219
    .end local v17    # "page":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->setupContentDimensions(I)V

    .line 221
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 222
    .local v18, "pageItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/CellLayout;>;"
    const/4 v11, 0x0

    .line 224
    .local v11, "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    const/16 v20, 0x0

    .line 227
    .local v20, "position":I
    const/16 v21, 0x0

    .line 228
    .local v21, "rank":I
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_9

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v13, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v22, v2

    .line 230
    .local v22, "v":Landroid/view/View;
    :goto_2
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_2

    .line 232
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v11, Lnet/oneplus/h2launcher/CellLayout;

    .line 237
    .restart local v11    # "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    :goto_3
    const/16 v20, 0x0

    .line 240
    :cond_2
    if-eqz v22, :cond_6

    .line 241
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 242
    .local v14, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    rem-int v15, v20, v2

    .line 243
    .local v15, "newX":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    div-int v16, v20, v2

    .line 244
    .local v16, "newY":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 245
    .local v3, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    if-ne v2, v15, :cond_3

    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_4

    .line 246
    :cond_3
    iput v15, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 247
    move/from16 v0, v16

    iput v0, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 248
    move/from16 v0, v21

    iput v0, v3, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 249
    if-eqz p3, :cond_4

    .line 250
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderContent;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v9, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static/range {v2 .. v9}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 254
    :cond_4
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iput v2, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 255
    iget v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iput v2, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 256
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 257
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_5
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 260
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v7

    const/4 v9, 0x1

    move-object v4, v11

    move-object/from16 v5, v22

    move-object v8, v14

    .line 259
    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 262
    sget v2, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    move-object/from16 v0, v22

    instance-of v2, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v2, :cond_6

    .line 263
    check-cast v22, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local v22    # "v":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 267
    .end local v3    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v14    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v15    # "newX":I
    .end local v16    # "newY":I
    :cond_6
    add-int/lit8 v21, v21, 0x1

    .line 268
    add-int/lit8 v20, v20, 0x1

    .line 228
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 229
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 235
    .restart local v22    # "v":Landroid/view/View;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderContent;->createAndAddNewPage()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v11

    goto/16 :goto_3

    .line 271
    .end local v22    # "v":Landroid/view/View;
    :cond_9
    if-eqz v11, :cond_a

    .line 272
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    .local v10, "currentHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountY:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderContent;->getItemHeight()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v12, v2

    .line 274
    .local v12, "expectedHeight":I
    sget-object v2, Lnet/oneplus/h2launcher/FolderContent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expectedHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eq v10, v12, :cond_a

    .line 276
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v12, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    .end local v10    # "currentHeight":I
    .end local v12    # "expectedHeight":I
    :cond_a
    return-void
.end method

.method private createAndAddNewPage()Lnet/oneplus/h2launcher/CellLayout;
    .locals 7

    .prologue
    .line 179
    iget v3, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentWidth:I

    div-int/lit8 v1, v3, 0x4

    .line 180
    .local v1, "cellWidth":I
    iget v3, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentHeight:I

    div-int/lit8 v0, v3, 0x3

    .line 181
    .local v0, "cellHeight":I
    new-instance v2, Lnet/oneplus/h2launcher/FolderCellLayout;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/FolderCellLayout;-><init>(Landroid/content/Context;)V

    .line 182
    .local v2, "page":Lnet/oneplus/h2launcher/FolderCellLayout;
    invoke-virtual {v2, v1, v0}, Lnet/oneplus/h2launcher/FolderCellLayout;->setCellDimensions(II)V

    .line 183
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderCellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 184
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/FolderCellLayout;->setImportantForAccessibility(I)V

    .line 185
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/FolderCellLayout;->setInvertIfRtl(Z)V

    .line 186
    iget v3, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    iget v4, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountY:I

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/FolderCellLayout;->setGridSize(II)V

    .line 188
    const/4 v3, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentWidth:I

    iget v6, p0, Lnet/oneplus/h2launcher/FolderContent;->mContentHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3, v4}, Lnet/oneplus/h2launcher/FolderContent;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-object v2
.end method

.method private setupContentDimensions(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 86
    iput p1, p0, Lnet/oneplus/h2launcher/FolderContent;->mAllocatedContentSize:I

    .line 87
    const/4 v1, 0x4

    iput v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    .line 88
    int-to-double v2, p1

    iget v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountY:I

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    iget v3, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->setGridSize(II)V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "rank"    # I

    .prologue
    .line 131
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    rem-int v7, p3, v0

    .line 132
    .local v7, "pagePos":I
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    div-int v6, p3, v0

    .line 134
    .local v6, "pageNo":I
    iput p3, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    .line 135
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    rem-int v0, v7, v0

    iput v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 136
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    div-int v0, v7, v0

    iput v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 139
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 140
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 142
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 143
    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    .line 142
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 144
    return-void
.end method

.method public allocateRankForNewItem()I
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getItemCount()I

    move-result v0

    .line 113
    .local v0, "rank":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/FolderContent;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 117
    return v0
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
    .line 208
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FolderContent;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 209
    return-void
.end method

.method public bindItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 102
    .local v1, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderContent;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lnet/oneplus/h2launcher/FolderContent;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 105
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 4

    .prologue
    .line 353
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 355
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

    .line 356
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 360
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
    .line 121
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderContent;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "icon":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/FolderContent;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    .line 123
    return-object v0
.end method

.method public createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 149
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 150
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-interface {v1, v2, v5, v4, v3}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;

    move-result-object v0

    .line 155
    .local v0, "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    :goto_0
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 156
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    new-instance v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iget v3, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iget v4, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    iget v5, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-object v0

    .line 152
    .end local v0    # "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040057

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .restart local v0    # "textView":Lnet/oneplus/h2launcher/BubbleTextView;
    goto :goto_0
.end method

.method public findNearestArea(II)I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, "pageIndex":I
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 297
    .local v0, "page":Lnet/oneplus/h2launcher/CellLayout;
    sget-object v5, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    .line 298
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v2

    sget-object v4, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    aget v4, v4, v7

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v7

    .line 301
    :cond_0
    iget v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mAllocatedContentSize:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    mul-int/2addr v2, v6

    sget-object v4, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    aget v3, v4, v3

    iget v4, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lnet/oneplus/h2launcher/FolderContent;->sTempPosArray:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public finishUpdateDynamicIconState()V
    .locals 3

    .prologue
    .line 530
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v0

    .line 531
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 532
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FolderContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 533
    .local v2, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->finishUpdateDynamicIconState()V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return-void
.end method

.method public getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 317
    :goto_0
    return-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 314
    .local v0, "currContainer":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    iget v1, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    if-lez v1, :cond_1

    .line 315
    invoke-virtual {v0, v3, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getGridCountY()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountY:I

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 283
    .local v0, "lastPageIndex":I
    if-gez v0, :cond_0

    .line 285
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FolderCellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderCellLayout;->getLastItem()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderContent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public itemsPerPage()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 7
    .param p1, "op"    # Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    .prologue
    .line 335
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 336
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v3

    .line 337
    .local v3, "page":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 339
    invoke-virtual {v3, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 340
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {p1, v5, v4, v6}, Lnet/oneplus/h2launcher/Workspace$ItemOperator;->evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "v":Landroid/view/View;
    :goto_3
    return-object v4

    .line 338
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 337
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "j":I
    .end local v3    # "page":Lnet/oneplus/h2launcher/CellLayout;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public realTimeReorder(II)V
    .locals 33
    .param p1, "empty"    # I
    .param p2, "target"    # I

    .prologue
    .line 389
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderContent;->completePendingPageChanges()V

    .line 390
    const/4 v9, 0x0

    .line 391
    .local v9, "delay":I
    const/high16 v12, 0x41f00000    # 30.0f

    .line 394
    .local v12, "delayAmount":F
    const/16 v28, 0x0

    .line 396
    .local v28, "pageToAnimate":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    div-int v27, p2, v6

    .line 397
    .local v27, "pageT":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    rem-int v26, p2, v6

    .line 399
    .local v26, "pagePosT":I
    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 400
    sget-object v6, Lnet/oneplus/h2launcher/FolderContent;->TAG:Ljava/lang/String;

    const-string v7, "Cannot animate when the target cell is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    rem-int v25, p1, v6

    .line 403
    .local v25, "pagePosE":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    div-int v23, p1, v6

    .line 409
    .local v23, "pageE":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 508
    :cond_1
    return-void

    .line 412
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    .line 414
    const/4 v13, 0x1

    .line 417
    .local v13, "direction":I
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 418
    move/from16 v18, p1

    .line 420
    .local v18, "moveStart":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    mul-int v17, v28, v6

    .line 423
    .local v17, "moveEnd":I
    const/16 v30, 0x0

    .line 429
    .local v30, "startPos":I
    :goto_0
    move/from16 v15, v26

    .line 451
    .local v15, "endPos":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 452
    add-int v29, v18, v13

    .line 453
    .local v29, "rankToMove":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    div-int v22, v29, v6

    .line 454
    .local v22, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    rem-int v24, v29, v6

    .line 455
    .local v24, "pagePos":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    rem-int v31, v24, v6

    .line 456
    .local v31, "x":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    div-int v32, v24, v6

    .line 458
    .local v32, "y":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 459
    .local v4, "page":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 460
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 461
    move/from16 v0, v28

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 462
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 463
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1}, Lnet/oneplus/h2launcher/FolderContent;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    .line 487
    :cond_3
    :goto_2
    move/from16 v18, v29

    .line 488
    goto :goto_1

    .line 425
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

    .line 426
    .restart local v18    # "moveStart":I
    move/from16 v30, v25

    .restart local v30    # "startPos":I
    goto :goto_0

    .line 432
    .end local v13    # "direction":I
    .end local v17    # "moveEnd":I
    .end local v18    # "moveStart":I
    .end local v30    # "startPos":I
    :cond_5
    const/4 v13, -0x1

    .line 434
    .restart local v13    # "direction":I
    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 436
    move/from16 v18, p1

    .line 438
    .restart local v18    # "moveStart":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v17, v6, -0x1

    .line 441
    .restart local v17    # "moveEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mMaxItemsPerPage:I

    add-int/lit8 v30, v6, -0x1

    .line 447
    .restart local v30    # "startPos":I
    :goto_3
    move/from16 v15, v26

    .restart local v15    # "endPos":I
    goto :goto_1

    .line 443
    .end local v15    # "endPos":I
    .end local v17    # "moveEnd":I
    .end local v18    # "moveStart":I
    .end local v30    # "startPos":I
    :cond_6
    const/16 v17, -0x1

    .restart local v17    # "moveEnd":I
    move/from16 v18, v17

    .line 444
    .restart local v18    # "moveStart":I
    move/from16 v30, v25

    .restart local v30    # "startPos":I
    goto :goto_3

    .line 466
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

    .line 467
    .local v19, "newRank":I
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v21

    .line 469
    .local v21, "oldTranslateX":F
    new-instance v14, Lnet/oneplus/h2launcher/FolderContent$1;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v14, v0, v5, v1, v2}, Lnet/oneplus/h2launcher/FolderContent$1;-><init>(Lnet/oneplus/h2launcher/FolderContent;Landroid/view/View;FI)V

    .line 479
    .local v14, "endAction":Ljava/lang/Runnable;
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-lez v13, :cond_8

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lnet/oneplus/h2launcher/FolderContent;->mIsRtl:Z

    xor-int/2addr v6, v8

    if-eqz v6, :cond_9

    .line 480
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    :goto_5
    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0xe6

    .line 481
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0x0

    .line 482
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 483
    invoke-virtual {v6, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 484
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 479
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 480
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_5

    .line 490
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

    .line 495
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 496
    .restart local v4    # "page":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v16, v30

    .local v16, "i":I
    :goto_6
    move/from16 v0, v16

    if-eq v0, v15, :cond_1

    .line 497
    add-int v20, v16, v13

    .line 498
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    rem-int v6, v20, v6

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    div-int v7, v20, v7

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 499
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_b

    .line 500
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    iget v7, v6, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    sub-int/2addr v7, v13

    iput v7, v6, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 502
    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    rem-int v6, v16, v6

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/FolderContent;->mGridCountX:I

    div-int v7, v16, v7

    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 504
    int-to-float v6, v9

    add-float/2addr v6, v12

    float-to-int v9, v6

    .line 505
    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v12, v6

    .line 496
    :cond_c
    add-int v16, v16, v13

    goto :goto_6
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 383
    :cond_0
    return-void
.end method

.method public setFolder(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 79
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderContent;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 80
    return-void
.end method

.method public setScaledSize()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public updateCurrentPageDynamicIconState()V
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderContent;->getCurrentCellLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 524
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->updateDynamicIconState()V

    .line 527
    :cond_0
    return-void
.end method

.method public verifyVisibleHighResIcons()V
    .locals 4

    .prologue
    .line 366
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    .line 367
    .local v1, "page":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 369
    .local v2, "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 370
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 369
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    .end local v2    # "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    :cond_0
    return-void
.end method
