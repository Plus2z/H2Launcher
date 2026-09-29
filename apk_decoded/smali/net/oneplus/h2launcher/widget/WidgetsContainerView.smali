.class public Lnet/oneplus/h2launcher/widget/WidgetsContainerView;
.super Lnet/oneplus/h2launcher/BaseContainerView;
.source "WidgetsContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lnet/oneplus/h2launcher/DragSource;


# static fields
.field private static final DEBUG:Z = false

.field private static final PRELOAD_SCREEN_HEIGHT_MULTIPLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetsContainerView"


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mContent:Landroid/view/View;

.field private mDragController:Lnet/oneplus/h2launcher/DragController;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mPadding:Landroid/graphics/Rect;

.field private mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field private mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    move-object v0, p1

    .line 92
    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 94
    new-instance v0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v0, p1, p0, p0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mAdapter:Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

    .line 95
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 99
    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    instance-of v0, p1, Lnet/oneplus/h2launcher/widget/WidgetCell;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lnet/oneplus/h2launcher/widget/WidgetCell;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->beginDraggingWidget(Lnet/oneplus/h2launcher/widget/WidgetCell;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 190
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const-string v0, "WidgetsContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dragging view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->enterSpringLoadedDragMode()V

    .line 199
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private beginDraggingWidget(Lnet/oneplus/h2launcher/widget/WidgetCell;)Z
    .locals 19
    .param p1, "v"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 204
    const v1, 0x7f1100b7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/widget/WidgetImageView;

    .line 205
    .local v2, "image":Lnet/oneplus/h2launcher/widget/WidgetImageView;
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    .line 209
    .local v5, "createItemInfo":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    .line 215
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 216
    .local v8, "scale":F
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 218
    .local v6, "bounds":Landroid/graphics/Rect;
    instance-of v1, v5, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_4

    move-object v12, v5

    .line 222
    check-cast v12, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    .line 223
    .local v12, "createWidgetInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v12, v4}, Lnet/oneplus/h2launcher/Workspace;->estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I

    move-result-object v18

    .line 225
    .local v18, "size":[I
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 226
    .local v13, "icon":Landroid/graphics/Bitmap;
    const/high16 v15, 0x3fa00000    # 1.25f

    .line 227
    .local v15, "minScale":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 229
    .local v14, "maxWidth":I
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 230
    .local v17, "previewSizeBeforeScale":[I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getWidgetPreviewLoader()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v1

    iget-object v4, v12, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v14, v7, v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->generateWidgetPreview(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 233
    .local v3, "preview":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    aget v1, v17, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 235
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v4, 0x0

    aget v4, v17, v4

    sub-int/2addr v1, v4

    div-int/lit8 v16, v1, 0x2

    .line 236
    .local v16, "padding":I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 237
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v1

    mul-int v1, v1, v16

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int v16, v1, v4

    .line 240
    :cond_1
    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int v1, v1, v16

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 241
    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v1, v16

    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 243
    .end local v16    # "padding":I
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v1, v4

    .line 254
    .end local v12    # "createWidgetInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    .end local v13    # "icon":Landroid/graphics/Bitmap;
    .end local v14    # "maxWidth":I
    .end local v15    # "minScale":F
    .end local v17    # "previewSizeBeforeScale":[I
    .end local v18    # "size":[I
    :goto_1
    instance-of v1, v5, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_3

    move-object v1, v5

    check-cast v1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->previewImage:I

    if-eqz v1, :cond_5

    :cond_3
    const/4 v10, 0x1

    .line 258
    .local v10, "clipAlpha":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->lockScreenOrientation()V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v10}, Lnet/oneplus/h2launcher/Workspace;->onDragStartedWithItem(Lnet/oneplus/h2launcher/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mDragController:Lnet/oneplus/h2launcher/DragController;

    sget v7, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_COPY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IF)V

    .line 263
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 245
    .end local v3    # "preview":Landroid/graphics/Bitmap;
    .end local v10    # "clipAlpha":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;

    .line 246
    .local v11, "createShortcutInfo":Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v9

    .line 247
    .local v9, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    iget-object v1, v11, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 248
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v13, v1}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 249
    .restart local v3    # "preview":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    iput v1, v5, Lnet/oneplus/h2launcher/PendingAddItemInfo;->spanY:I

    iput v1, v5, Lnet/oneplus/h2launcher/PendingAddItemInfo;->spanX:I

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v1, v4

    goto :goto_1

    .line 254
    .end local v9    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v11    # "createShortcutInfo":Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private getWidgetPreviewLoader()Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 375
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    return-object v0
.end method


# virtual methods
.method public addWidgets(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
    .locals 1
    .param p1, "model"    # Lnet/oneplus/h2launcher/model/WidgetsModel;

    .prologue
    .line 366
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->setWidgets(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    .line 367
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mAdapter:Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->setWidgetsModel(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    .line 368
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mAdapter:Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->notifyDataSetChanged()V

    .line 369
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f1101fb

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 146
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/widget/WidgetCell;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 153
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0077

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 311
    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v7

    if-eq p1, v7, :cond_1

    instance-of v7, p1, Lnet/oneplus/h2launcher/DeleteDropTarget;

    if-nez v7, :cond_1

    instance-of v7, p1, Lnet/oneplus/h2launcher/Folder;

    if-nez v7, :cond_1

    .line 315
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/16 v8, 0x12c

    invoke-virtual {v7, v5, v8, v9}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 318
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7, v6}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 322
    if-nez p4, :cond_4

    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, "showOutOfSpaceMessage":Z
    instance-of v7, p1, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v7, :cond_2

    .line 325
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, "currentScreen":I
    move-object v4, p1

    .line 326
    check-cast v4, Lnet/oneplus/h2launcher/Workspace;

    .line 327
    .local v4, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 328
    .local v2, "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v1, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 329
    .local v1, "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v2, :cond_2

    .line 330
    iget v7, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v8, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 331
    invoke-virtual {v2, v9, v7, v8}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v5

    .line 334
    .end local v0    # "currentScreen":I
    .end local v1    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 335
    iget-object v5, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->showOutOfSpaceMessage(Z)V

    .line 337
    :cond_3
    iput-boolean v6, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 339
    .end local v3    # "showOutOfSpaceMessage":Z
    :cond_4
    return-void

    .restart local v0    # "currentScreen":I
    .restart local v1    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v3    # "showOutOfSpaceMessage":Z
    .restart local v4    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_5
    move v3, v6

    .line 331
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->onFinishInflate()V

    .line 104
    const v0, 0x7f1100bc

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mContent:Landroid/view/View;

    .line 105
    const v0, 0x7f1101fc

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mAdapter:Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    new-instance v1, Lnet/oneplus/h2launcher/widget/WidgetsContainerView$1;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView$1;-><init>(Lnet/oneplus/h2launcher/widget/WidgetsContainerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getPaddingRight()I

    move-result v3

    .line 118
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getPaddingBottom()I

    move-result v4

    .line 117
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 306
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isWidgetsViewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 167
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string v3, "WidgetsContainerView"

    const-string v4, "onLonglick dragging enabled?."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isDraggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->beginDragging(Landroid/view/View;)Z

    move-result v2

    .line 173
    .local v2, "status":Z
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_0

    .line 174
    new-instance v0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v0, v3, p1}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;)V

    .line 175
    .local v0, "hostLoader":Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->preloadWidget()Z

    move-result v1

    .line 179
    .local v1, "preloadStatus":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    goto :goto_0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mContent:Landroid/view/View;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 353
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 355
    .local v0, "background":Landroid/graphics/drawable/InsetDrawable;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v6, "bgPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 357
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 360
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mView:Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->scrollToPosition(I)V

    .line 136
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public supportsEditDropTarget()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method
