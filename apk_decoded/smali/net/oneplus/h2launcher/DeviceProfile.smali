.class public Lnet/oneplus/h2launcher/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# instance fields
.field public allAppsButtonVisualSize:I

.field public final allAppsIconSizePx:I

.field public final allAppsIconTextSizeSp:F

.field public allAppsNumCols:I

.field public allAppsNumPredictiveCols:I

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public cellHeightPx:I

.field public cellWidthPx:I

.field private final defaultPageSpacingPx:I

.field public final defaultWidgetPadding:Landroid/graphics/Rect;

.field private desiredWorkspaceLeftRightMarginPx:I

.field private dragViewScale:F

.field public final edgeMarginPx:I

.field public folderBackgroundOffset:I

.field public folderCellHeightPx:I

.field public folderCellWidthPx:I

.field public folderIconSizePx:I

.field public final heightPx:I

.field private hotseatBarHeightPx:I

.field public hotseatCellHeightPx:I

.field public hotseatCellWidthPx:I

.field public hotseatIconSizePx:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field public final isLandscape:Z

.field public final isLargeTablet:Z

.field public final isPhone:Z

.field public final isTablet:Z

.field private mContext:Landroid/content/Context;

.field private mInsets:Landroid/graphics/Rect;

.field private mIsDefault420Dpi:Z

.field private mIsLargestDpi:Z

.field private final overviewModeBarItemWidthPx:I

.field private final overviewModeBarSpacerWidthPx:I

.field private final overviewModeIconZoneRatio:F

.field private final overviewModeMaxIconZoneHeightPx:I

.field private final overviewModeMinIconZoneHeightPx:I

.field private pageIndicatorBottomMargin:I

.field private final pageIndicatorHeightPx:I

.field private searchBarSpaceHeightPx:I

.field private searchBarSpaceWidthPx:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p3, "minSize"    # Landroid/graphics/Point;
    .param p4, "maxSize"    # Landroid/graphics/Point;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isLandscape"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsLargestDpi:Z

    .line 107
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsDefault420Dpi:Z

    .line 110
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 112
    iput-object v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 119
    iput-boolean p7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 125
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const v5, 0x7f100002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    .line 126
    const v5, 0x7f100005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLargeTablet:Z

    .line 127
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLargeTablet:Z

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isPhone:Z

    .line 130
    const v4, 0x7f100004

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 133
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {p1, v0, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 136
    const v4, 0x7f0c0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    .line 137
    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 139
    const v4, 0x7f0c005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 140
    .local v2, "pageIndicatorHeight":I
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v2    # "pageIndicatorHeight":I
    :goto_0
    iput v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->pageIndicatorHeightPx:I

    .line 142
    const v4, 0x7f0c0064

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultPageSpacingPx:I

    .line 144
    const v4, 0x7f0c005d

    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 146
    const v4, 0x7f0c005c

    .line 147
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 148
    const v4, 0x7f0c005a

    .line 149
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeBarItemWidthPx:I

    .line 150
    const v4, 0x7f0c005b

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    .line 152
    const v4, 0x7f0f002b

    .line 153
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeIconZoneRatio:F

    .line 155
    iget-object v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->isBangsScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const v4, 0x7f0c0058

    .line 157
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 163
    :goto_1
    const v4, 0x7f0c00d5

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->pageIndicatorBottomMargin:I

    .line 167
    iget v4, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconTextSizeSp:F

    .line 170
    iget v4, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static {v4, v1}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    .line 173
    iput p5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    .line 174
    iput p6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    .line 175
    if-eqz p7, :cond_3

    .line 176
    iget v4, p4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    .line 177
    iget v4, p3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    .line 184
    :goto_2
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->isLargestDensity(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsLargestDpi:Z

    .line 185
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->isDefaultDensity(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsDefault420Dpi:Z

    .line 186
    invoke-direct {p0, v1, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 187
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    .line 188
    return-void

    .line 140
    .restart local v2    # "pageIndicatorHeight":I
    :cond_1
    int-to-float v4, v2

    const v5, 0x3fd5c28f    # 1.67f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto/16 :goto_0

    .line 159
    .end local v2    # "pageIndicatorHeight":I
    :cond_2
    const v4, 0x7f0c0057

    .line 160
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    goto :goto_1

    .line 179
    :cond_3
    iget v4, p3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    .line 180
    iget v4, p4, Landroid/graphics/Point;->y:I

    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    goto :goto_2
.end method

.method public static calculateCellHeight(II)I
    .locals 1
    .param p0, "height"    # I
    .param p1, "countY"    # I

    .prologue
    .line 437
    div-int v0, p0, p1

    return v0
.end method

.method public static calculateCellWidth(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "countX"    # I

    .prologue
    .line 434
    div-int v0, p0, p1

    return v0
.end method

.method private computeAllAppsButtonSize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0f0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v0, v2, v3

    .line 201
    .local v0, "padding":F
    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsButtonVisualSize:I

    .line 202
    return-void
.end method

.method private getBangsBottomPadding()I
    .locals 3

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "workspaceBottomPadding":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isBangsScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getVirtualKeyHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0061

    .line 381
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 387
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getIndicatorMarginBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_0
    return v0

    .line 383
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0062

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getCurrentHeight()I
    .locals 2

    .prologue
    .line 603
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    .line 604
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    .line 605
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentWidth()I
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    .line 598
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    .line 599
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getIndicatorMarginBottom()I
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "indicatorBottomMarginPx":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isBangsScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0059

    .line 397
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 400
    :cond_0
    return v0
.end method

.method private getSearchBarTopOffset()I
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x4

    .line 288
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getVisibleChildCount(Landroid/view/ViewGroup;)I
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, "visibleChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 460
    add-int/lit8 v1, v1, 0x1

    .line 458
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_1
    return v1
.end method

.method private getWorkspacePageSpacing(Z)I
    .locals 2
    .param p1, "isLayoutRtl"    # Z

    .prologue
    .line 404
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLargeTablet:Z

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultPageSpacingPx:I

    .line 411
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultPageSpacingPx:I

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 207
    const/high16 v2, 0x3f800000    # 1.0f

    .line 208
    .local v2, "scale":F
    iget v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 209
    .local v0, "drawablePadding":I
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v5, v0, p2, p1}, Lnet/oneplus/h2launcher/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 210
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    iget-object v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v6, v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v5, v6

    int-to-float v3, v5

    .line 213
    .local v3, "usedHeight":F
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 214
    .local v4, "workspacePadding":Landroid/graphics/Rect;
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 215
    .local v1, "maxHeight":I
    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    .line 216
    int-to-float v5, v1

    div-float v2, v5, v3

    .line 217
    const/4 v0, 0x0

    .line 219
    :cond_0
    invoke-direct {p0, v2, v0, p2, p1}, Lnet/oneplus/h2launcher/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 220
    return-void
.end method

.method private updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "drawablePadding"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v6, 0x2

    .line 224
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsLargestDpi:Z

    if-eqz v5, :cond_1

    const v1, 0x3f638ef3    # 0.8889f

    .line 225
    .local v1, "largestDpiScale":F
    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static {v5, p4}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    .line 226
    iget-object v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v5, p4}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconTextSizePx:I

    .line 227
    iput p2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    .line 228
    iget-object v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    invoke-static {v5, p4}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatIconSizePx:I

    .line 231
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    const v7, 0x7f0c0060

    .line 232
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 231
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceWidthPx:I

    .line 233
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getSearchBarTopOffset()I

    move-result v5

    const v7, 0x7f0c005f

    .line 234
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 237
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .local v4, "textPaint":Landroid/graphics/Paint;
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 240
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    .line 241
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v5, v7

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    add-int/2addr v5, v7

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    .line 242
    const v5, 0x7f0c023d

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v3, v5

    .line 243
    .local v3, "scaleDps":F
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->dragViewScale:F

    .line 246
    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsLargestDpi:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    iget v8, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    .line 247
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatCellWidthPx:I

    .line 248
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatCellHeightPx:I

    .line 251
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellWidthPx:I

    .line 252
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsLargestDpi:Z

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    :cond_0
    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderCellHeightPx:I

    .line 253
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    neg-int v5, v5

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    .line 255
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mIsDefault420Dpi:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x40200000    # 2.5f

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 256
    .local v2, "offset":I
    :goto_2
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    add-int/2addr v5, v2

    iput v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderIconSizePx:I

    .line 257
    return-void

    .line 224
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v1    # "largestDpiScale":F
    .end local v2    # "offset":I
    .end local v3    # "scaleDps":F
    .end local v4    # "textPaint":Landroid/graphics/Paint;
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 246
    .restart local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v1    # "largestDpiScale":F
    .restart local v3    # "scaleDps":F
    .restart local v4    # "textPaint":Landroid/graphics/Paint;
    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    .line 255
    :cond_3
    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    neg-int v5, v5

    mul-int/lit8 v2, v5, 0x2

    goto :goto_2
.end method


# virtual methods
.method getHotseatRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    .line 424
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 428
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method getOverviewModeButtonBarHeight()I
    .locals 3

    .prologue
    .line 416
    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeIconZoneRatio:F

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 417
    .local v0, "zoneHeight":I
    iget v1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 418
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 419
    return v0
.end method

.method public getSearchBarBounds(Z)Landroid/graphics/Rect;
    .locals 8
    .param p1, "isLayoutRtl"    # Z

    .prologue
    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v3, :cond_1

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 322
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    iget v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 304
    :cond_1
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_2

    .line 307
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getCurrentWidth()I

    move-result v2

    .line 310
    .local v2, "width":I
    iget v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    div-int v1, v3, v4

    .line 312
    .local v1, "gap":I
    iget v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v1

    invoke-direct {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getSearchBarTopOffset()I

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v6, v1

    sub-int/2addr v5, v6

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 316
    .end local v1    # "gap":I
    .end local v2    # "width":I
    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 317
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getSearchBarTopOffset()I

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 316
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getVirtualKeyHeight()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getWorkspacePadding(Z)Landroid/graphics/Rect;
    .locals 21
    .param p1, "isLayoutRtl"    # Z

    .prologue
    .line 327
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/DeviceProfile;->getSearchBarBounds(Z)Landroid/graphics/Rect;

    move-result-object v13

    .line 328
    .local v13, "searchBarBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v9, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 331
    if-eqz p1, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    move/from16 v18, v0

    .line 333
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    move/from16 v20, v0

    .line 332
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    :goto_0
    return-object v9

    .line 335
    :cond_0
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 342
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->dragViewScale:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v6, v17, v18

    .line 343
    .local v6, "gapScale":F
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getCurrentWidth()I

    move-result v16

    .line 344
    .local v16, "width":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getCurrentHeight()I

    move-result v7

    .line 345
    .local v7, "height":I
    iget v11, v13, Landroid/graphics/Rect;->bottom:I

    .line 346
    .local v11, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->pageIndicatorHeightPx:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 347
    .local v10, "paddingBottom":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v18, v16, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 349
    .local v5, "availableWidth":I
    const/16 v17, 0x0

    sub-int v18, v7, v11

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 351
    .local v4, "availableHeight":I
    div-int/lit8 v17, v5, 0x2

    div-int/lit8 v18, v4, 0x2

    add-int v18, v18, v11

    div-int/lit8 v19, v5, 0x2

    div-int/lit8 v20, v4, 0x2

    add-int v20, v20, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 354
    .end local v4    # "availableHeight":I
    .end local v5    # "availableWidth":I
    .end local v6    # "gapScale":F
    .end local v7    # "height":I
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingTop":I
    .end local v16    # "width":I
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v14

    .line 355
    .local v14, "showHotSeat":Z
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v15

    .line 356
    .local v15, "showSearchBar":Z
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    move/from16 v17, v0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->pageIndicatorHeightPx:I

    move/from16 v18, v0

    add-int v17, v17, v18

    .line 357
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getBangsBottomPadding()I

    move-result v18

    add-int v10, v17, v18

    .line 360
    .restart local v10    # "paddingBottom":I
    move-object/from16 v0, p0

    iget v8, v0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 361
    .local v8, "left":I
    move-object/from16 v0, p0

    iget v12, v0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 362
    .local v12, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lnet/oneplus/h2launcher/Utilities;->isBangsScreen(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v12, v17, v18

    .line 367
    :cond_3
    if-eqz v15, :cond_5

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v9, v8, v0, v12, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 356
    .end local v8    # "left":I
    .end local v10    # "paddingBottom":I
    .end local v12    # "right":I
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 367
    .restart local v8    # "left":I
    .restart local v10    # "paddingBottom":I
    .restart local v12    # "right":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_2
.end method

.method isVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 16
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 468
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    .line 469
    .local v1, "hasVerticalBarLayout":Z
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 472
    .local v3, "isLayoutRtl":Z
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v7

    .line 473
    .local v7, "searchBar":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 477
    const/4 v11, 0x3

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 478
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 480
    const v11, 0x7f1101b0

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 481
    .local v8, "targets":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    .local v9, "targetsLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v11, 0x30

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 484
    const/4 v11, -0x2

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 494
    .end local v9    # "targetsLp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    const v11, 0x7f11003a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/PagedView;

    .line 498
    .local v10, "workspace":Lnet/oneplus/h2launcher/PagedView;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 499
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v11, 0x11

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 501
    .local v5, "padding":Landroid/graphics/Rect;
    invoke-virtual {v10, v4}, Lnet/oneplus/h2launcher/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lnet/oneplus/h2launcher/PagedView;->setPadding(IIII)V

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePageSpacing(Z)I

    move-result v11

    invoke-virtual {v10, v11}, Lnet/oneplus/h2launcher/PagedView;->setPageSpacing(I)V

    .line 506
    const v11, 0x7f110158

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 507
    .local v2, "hotseat":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 509
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_3

    .line 512
    const/4 v11, 0x5

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 513
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    const/4 v11, -0x1

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 515
    const v11, 0x7f110133

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v13, v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v15, v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 533
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    :cond_0
    const v11, 0x7f11014c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 538
    .local v6, "pageIndicator":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 539
    if-eqz v1, :cond_5

    .line 541
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_1
    :goto_2
    return-void

    .line 488
    .end local v2    # "hotseat":Landroid/view/View;
    .end local v5    # "padding":Landroid/graphics/Rect;
    .end local v6    # "pageIndicator":Landroid/view/View;
    .end local v8    # "targets":Landroid/widget/LinearLayout;
    .end local v10    # "workspace":Lnet/oneplus/h2launcher/PagedView;
    :cond_2
    const/16 v11, 0x30

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 489
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 491
    const v11, 0x7f1101b0

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 492
    .restart local v8    # "targets":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lnet/oneplus/h2launcher/DeviceProfile;->searchBarSpaceWidthPx:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 516
    .restart local v2    # "hotseat":Landroid/view/View;
    .restart local v5    # "padding":Landroid/graphics/Rect;
    .restart local v10    # "workspace":Lnet/oneplus/h2launcher/PagedView;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    if-eqz v11, :cond_4

    .line 518
    const/16 v11, 0x50

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 519
    const/4 v11, -0x1

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 520
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v14, v14, 0x2

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 527
    :cond_4
    const/16 v11, 0x50

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 528
    const/4 v11, -0x1

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 529
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 530
    const v11, 0x7f110133

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v14, v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 544
    .restart local v6    # "pageIndicator":Landroid/view/View;
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v11, 0x51

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 546
    const/4 v11, -0x2

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 547
    const/4 v11, -0x2

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 548
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v11

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatBarHeightPx:I

    .line 549
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getVirtualKeyHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 550
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DeviceProfile;->getIndicatorMarginBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 551
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 548
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/DeviceProfile;->pageIndicatorBottomMargin:I

    goto :goto_3
.end method

.method shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method shouldFadeAdjacentWorkspaceScreensWhileTransitionAnimation()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public updateAppsViewNumCols(I)V
    .locals 0
    .param p1, "numAppsCols"    # I

    .prologue
    .line 279
    iput p1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumCols:I

    .line 280
    iput p1, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumPredictiveCols:I

    .line 281
    return-void
.end method

.method public updateAppsViewNumCols(Landroid/content/res/Resources;I)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "recyclerViewWidth"    # I

    .prologue
    .line 263
    const v5, 0x7f0c0162

    .line 264
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 265
    .local v1, "appsViewLeftMarginPx":I
    const v5, 0x7f0c01cb

    .line 266
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    .local v0, "allAppsCellWidthGap":I
    if-lez p2, :cond_0

    move v2, p2

    .line 268
    .local v2, "availableAppsWidthPx":I
    :goto_0
    add-int v5, v2, v0

    sub-int/2addr v5, v1

    iget v6, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    add-int/2addr v6, v0

    div-int v3, v5, v6

    .line 270
    .local v3, "numAppsCols":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 271
    .local v4, "numPredictiveAppCols":I
    iput v3, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumCols:I

    .line 272
    iput v4, p0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumPredictiveCols:I

    .line 273
    return-void

    .line 267
    .end local v2    # "availableAppsWidthPx":I
    .end local v3    # "numAppsCols":I
    .end local v4    # "numPredictiveAppCols":I
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/DeviceProfile;->availableWidthPx:I

    goto :goto_0
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    return-void
.end method
