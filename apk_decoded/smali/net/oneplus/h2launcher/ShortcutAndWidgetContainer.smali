.class public Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mHeightGap:I

.field private mInvertIfRtl:Z

.field private mIsHotseatLayout:Z

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    move-object v0, p1

    .line 53
    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 54
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 55
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 239
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 240
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 241
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 111
    .local v0, "debug":Z
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 112
    return-void
.end method

.method getCellContentHeight()I
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 152
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v2

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatCellHeightPx:I

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_0
    iget v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    goto :goto_0
.end method

.method getCellContentWidth()I
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 146
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v2

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatCellWidthPx:I

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_0
    iget v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    goto :goto_0
.end method

.method public getChildAt(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 83
    .local v2, "count":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .local v1, "childRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 85
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 88
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 84
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 69
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 70
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 73
    .local v3, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v4, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 78
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 69
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v12

    .line 158
    .local v12, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 159
    .local v1, "cellWidth":I
    iget v2, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 160
    .local v2, "cellHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 161
    .local v0, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget-boolean v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    if-nez v3, :cond_1

    .line 162
    iget v3, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    iget v6, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCountX:I

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 165
    instance-of v3, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v3, :cond_0

    .line 180
    :goto_0
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 181
    .local v10, "childWidthMeasureSpec":I
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 183
    .local v11, "childheightMeasureSpec":I
    invoke-virtual {p1, v10, v11}, Landroid/view/View;->measure(II)V

    .line 184
    return-void

    .line 169
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childheightMeasureSpec":I
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v7

    .line 170
    .local v7, "cHeight":I
    const/4 v3, 0x0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v9, v3

    .line 171
    .local v9, "cellPaddingY":I
    iget v3, v12, Lnet/oneplus/h2launcher/DeviceProfile;->edgeMarginPx:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v8, v3

    .line 172
    .local v8, "cellPaddingX":I
    const/4 v3, 0x0

    invoke-virtual {p1, v8, v9, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 175
    .end local v7    # "cHeight":I
    .end local v8    # "cellPaddingX":I
    .end local v9    # "cellPaddingY":I
    :cond_1
    const/4 v3, 0x0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 176
    const/4 v3, 0x0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 177
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    .line 178
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v3

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 193
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 194
    invoke-virtual {p0, v12}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 195
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 196
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 197
    .local v13, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v9, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 198
    .local v9, "childLeft":I
    iget v10, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 200
    .local v10, "childTop":I
    :try_start_0
    iget v0, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    iget-boolean v0, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->dropped:Z

    .line 208
    iget-object v7, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 209
    .local v7, "cellXY":[I
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 210
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 193
    .end local v7    # "cellXY":[I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v13    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 217
    .end local v8    # "child":Landroid/view/View;
    :cond_1
    return-void

    .line 201
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "childLeft":I
    .restart local v10    # "childTop":I
    .restart local v13    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 118
    .local v1, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 119
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 120
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v4, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 122
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 123
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 122
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 229
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 232
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIIII)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "countX"    # I
    .param p6, "countY"    # I

    .prologue
    .line 59
    iput p1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 60
    iput p2, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 61
    iput p3, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 62
    iput p4, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mHeightGap:I

    .line 63
    iput p5, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCountX:I

    .line 64
    iput p6, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCountY:I

    .line 65
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 248
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 253
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 254
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 262
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0
    .param p1, "invert"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 138
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 0
    .param p1, "isHotseat"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    .line 142
    return-void
.end method

.method public setupLp(Lnet/oneplus/h2launcher/CellLayout$LayoutParams;)V
    .locals 7
    .param p1, "lp"    # Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .prologue
    .line 131
    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v3, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    iget v6, p0, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->mCountX:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 133
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method
