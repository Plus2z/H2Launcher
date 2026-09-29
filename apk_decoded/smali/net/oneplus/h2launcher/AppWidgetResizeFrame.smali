.class public Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field private static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field private static final RESIZE_THRESHOLD:F = 0.66f

.field private static final SNAP_DURATION:I = 0x96

.field private static sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private final mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private final mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDirectionVector:[I

.field private final mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLeftBorderActive:Z

.field private final mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private final mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mTmpPt:[I

.field private mTopBorderActive:Z

.field private final mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private final mTouchTargetWidth:I

.field private final mWidgetPadding:Landroid/graphics/Rect;

.field private final mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragLayer;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetView"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p4, "dragLayer"    # Lnet/oneplus/h2launcher/DragLayer;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 41
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 42
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    .line 64
    const/4 v5, 0x0

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 65
    const/4 v5, 0x0

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    move-object v5, p1

    .line 71
    check-cast v5, Lnet/oneplus/h2launcher/Launcher;

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 72
    iput-object p3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 73
    iput-object p2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    .line 75
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 76
    .local v1, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    iget v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    .line 77
    iput-object p4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 79
    iget v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinHSpan:I

    .line 80
    iget v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinVSpan:I

    .line 82
    const v5, 0x7f020265

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 83
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020264

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 86
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0321

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    .local v0, "handleMargin":I
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 89
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x13

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 92
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 93
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 96
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x15

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 100
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 103
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x31

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 106
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 110
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x51

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 113
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 114
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-boolean v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v5, :cond_1

    .line 118
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v6, 0x0

    .line 117
    invoke-static {p1, v5, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    .line 125
    :goto_0
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 126
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c02e3

    .line 134
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 135
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 140
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v6, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 141
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 121
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x7f0c020d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 122
    .local v3, "padding":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    goto :goto_0

    .line 128
    .end local v3    # "padding":I
    .end local v4    # "r":Landroid/content/res/Resources;
    :cond_2
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 129
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getWidgetSizeRanges(Landroid/app/Activity;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 345
    if-nez p3, :cond_0

    .line 346
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "rect":Landroid/graphics/Rect;
    invoke-direct/range {p3 .. p3}, Landroid/graphics/Rect;-><init>()V

    .line 348
    .restart local p3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v12, 0x0

    invoke-static {p0, v12}, Lnet/oneplus/h2launcher/Workspace;->getCellLayoutMetrics(Landroid/app/Activity;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 349
    .local v6, "landMetrics":Landroid/graphics/Rect;
    const/4 v12, 0x1

    invoke-static {p0, v12}, Lnet/oneplus/h2launcher/Workspace;->getCellLayoutMetrics(Landroid/app/Activity;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 350
    .local v9, "portMetrics":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v3, v12, Landroid/util/DisplayMetrics;->density:F

    .line 353
    .local v3, "density":F
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 354
    .local v2, "cellWidth":I
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 355
    .local v1, "cellHeight":I
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 356
    .local v11, "widthGap":I
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 357
    .local v4, "heightGap":I
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v7, v12

    .line 358
    .local v7, "landWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v5, v12

    .line 361
    .local v5, "landHeight":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 362
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 363
    iget v11, v9, Landroid/graphics/Rect;->right:I

    .line 364
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 365
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v10, v12

    .line 366
    .local v10, "portWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v8, v12

    .line 367
    .local v8, "portHeight":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    return-object p3
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 24
    .param p1, "onDismiss"    # Z

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/CellLayout;->getWidthGap()I

    move-result v6

    add-int v22, v1, v6

    .line 226
    .local v22, "xThreshold":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/CellLayout;->getHeightGap()I

    move-result v6

    add-int v23, v1, v6

    .line 228
    .local v23, "yThreshold":I
    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int v13, v1, v6

    .line 229
    .local v13, "deltaX":I
    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int v14, v1, v6

    .line 231
    .local v14, "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v13

    mul-float/2addr v1, v6

    move/from16 v0, v22

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v6, v6

    sub-float v17, v1, v6

    .line 232
    .local v17, "hSpanIncF":F
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v14

    mul-float/2addr v1, v6

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v6, v6

    sub-float v21, v1, v6

    .line 234
    .local v21, "vSpanIncF":F
    const/16 v16, 0x0

    .line 235
    .local v16, "hSpanInc":I
    const/16 v20, 0x0

    .line 236
    .local v20, "vSpanInc":I
    const/4 v9, 0x0

    .line 237
    .local v9, "cellXInc":I
    const/4 v10, 0x0

    .line 239
    .local v10, "cellYInc":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v11

    .line 240
    .local v11, "countX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v12

    .line 242
    .local v12, "countY":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 243
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 245
    :cond_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 246
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 249
    :cond_1
    if-nez p1, :cond_3

    if-nez v16, :cond_3

    if-nez v20, :cond_3

    .line 335
    :cond_2
    :goto_0
    return-void

    .line 252
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 254
    .local v18, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 255
    .local v4, "spanX":I
    move-object/from16 v0, v18

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 256
    .local v5, "spanY":I
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, v18

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 257
    .local v2, "cellX":I
    :goto_1
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    .line 259
    .local v3, "cellY":I
    :goto_2
    const/4 v15, 0x0

    .line 260
    .local v15, "hSpanDelta":I
    const/16 v19, 0x0

    .line 264
    .local v19, "vSpanDelta":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_e

    .line 265
    neg-int v1, v2

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 266
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 267
    mul-int/lit8 v16, v16, -0x1

    .line 268
    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 269
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 270
    move/from16 v0, v16

    neg-int v15, v0

    .line 278
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_f

    .line 279
    neg-int v1, v3

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 280
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 281
    mul-int/lit8 v20, v20, -0x1

    .line 282
    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 283
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 284
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v19, v0

    .line 291
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 294
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_7

    .line 295
    :cond_6
    add-int v4, v4, v16

    .line 296
    add-int/2addr v2, v9

    .line 297
    if-eqz v15, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    :goto_5
    aput v1, v6, v7

    .line 302
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_9

    .line 303
    :cond_8
    add-int v5, v5, v20

    .line 304
    add-int/2addr v3, v10

    .line 305
    if-eqz v19, :cond_9

    .line 306
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    :goto_6
    aput v1, v6, v7

    .line 310
    :cond_9
    if-nez p1, :cond_a

    if-nez v19, :cond_a

    if-eqz v15, :cond_2

    .line 314
    :cond_a
    if-eqz p1, :cond_12

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    .line 322
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 324
    move-object/from16 v0, v18

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 325
    move-object/from16 v0, v18

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    .line 326
    move-object/from16 v0, v18

    iput v4, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 327
    move-object/from16 v0, v18

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 328
    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 329
    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningHInc:I

    .line 330
    if-nez p1, :cond_b

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1, v6, v4, v5}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/Launcher;II)V

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 256
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v15    # "hSpanDelta":I
    .end local v19    # "vSpanDelta":I
    :cond_c
    move-object/from16 v0, v18

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    goto/16 :goto_1

    .line 257
    .restart local v2    # "cellX":I
    :cond_d
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    goto/16 :goto_2

    .line 272
    .restart local v3    # "cellY":I
    .restart local v15    # "hSpanDelta":I
    .restart local v19    # "vSpanDelta":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_4

    .line 273
    add-int v1, v2, v4

    sub-int v1, v11, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 274
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 275
    move/from16 v15, v16

    goto/16 :goto_3

    .line 285
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_5

    .line 286
    add-int v1, v3, v5

    sub-int v1, v12, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 287
    move-object/from16 v0, v18

    iget v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 288
    move/from16 v19, v20

    goto/16 :goto_4

    .line 298
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 306
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 318
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    goto/16 :goto_7
.end method

.method static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/Launcher;II)V
    .locals 6
    .param p0, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 339
    sget-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/app/Activity;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 340
    const/4 v1, 0x0

    sget-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 342
    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "onDismiss"    # Z

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 201
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    .line 203
    .local v0, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 204
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    .line 205
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    .line 210
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 211
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    .line 212
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    .line 217
    :cond_1
    :goto_1
    invoke-direct {p0, p3}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 218
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 219
    return-void

    .line 206
    :cond_2
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 207
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 213
    :cond_3
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 214
    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 145
    .local v1, "horizontalActive":Z
    :goto_0
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v2, v3

    .line 147
    .local v2, "verticalActive":Z
    :goto_1
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 149
    iget v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v8, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-ge p2, v5, :cond_6

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 150
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    iget v8, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-le p2, v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 153
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_8

    :cond_0
    move v0, v3

    .line 156
    .local v0, "anyBordersActive":Z
    :goto_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 157
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineX:I

    .line 159
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineY:I

    .line 161
    if-eqz v0, :cond_1

    .line 162
    iget-object v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    iget-object v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 164
    iget-object v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    :cond_1
    return v0

    .end local v0    # "anyBordersActive":Z
    .end local v1    # "horizontalActive":Z
    .end local v2    # "verticalActive":Z
    :cond_2
    move v1, v4

    .line 144
    goto/16 :goto_0

    .restart local v1    # "horizontalActive":Z
    :cond_3
    move v2, v4

    .line 145
    goto/16 :goto_1

    .restart local v2    # "verticalActive":Z
    :cond_4
    move v5, v4

    .line 147
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 148
    goto :goto_3

    :cond_6
    move v5, v4

    .line 149
    goto :goto_4

    :cond_7
    move v5, v4

    .line 150
    goto :goto_5

    :cond_8
    move v0, v4

    .line 153
    goto :goto_6

    .restart local v0    # "anyBordersActive":Z
    :cond_9
    move v3, v7

    .line 162
    goto :goto_7

    :cond_a
    move v3, v7

    .line 163
    goto :goto_8

    :cond_b
    move v3, v7

    .line 164
    goto :goto_9

    :cond_c
    move v6, v7

    .line 165
    goto :goto_a
.end method

.method public commitResize()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 377
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 378
    return-void
.end method

.method public onTouchUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getWidthGap()I

    move-result v3

    add-int v0, v2, v3

    .line 382
    .local v0, "xThreshold":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getHeightGap()I

    move-result v3

    add-int v1, v2, v3

    .line 384
    .local v1, "yThreshold":I
    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 385
    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v2, v1

    iput v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 386
    iput v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 387
    iput v4, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 389
    new-instance v2, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$1;-><init>(Lnet/oneplus/h2launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 22
    .param p1, "animate"    # Z

    .prologue
    .line 398
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    .line 399
    .local v5, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 401
    .local v7, "newWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 404
    .local v6, "newHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    aput v19, v17, v18

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    aput v19, v17, v18

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelfWithoutMapPoint(Landroid/view/View;[IZ)F

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 409
    .local v8, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 414
    .local v9, "newY":I
    if-gez v9, :cond_0

    .line 416
    neg-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 420
    :goto_0
    add-int v17, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragLayer;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 422
    add-int v17, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragLayer;->getHeight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 427
    :goto_1
    if-nez p1, :cond_2

    .line 428
    iput v7, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    .line 429
    iput v6, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    .line 430
    iput v8, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    .line 431
    iput v9, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 466
    :goto_2
    return-void

    .line 418
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 424
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 438
    :cond_2
    const-string v17, "width"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v7, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 439
    .local v14, "width":Landroid/animation/PropertyValuesHolder;
    const-string v17, "height"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v6, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 441
    .local v3, "height":Landroid/animation/PropertyValuesHolder;
    const-string v17, "x"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 442
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const-string v17, "y"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 443
    .local v16, "y":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v15, v17, v18

    const/16 v18, 0x3

    aput-object v16, v17, v18

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 445
    .local v10, "oa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 446
    .local v4, "leftOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 447
    .local v11, "rightOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 448
    .local v13, "topOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 449
    .local v2, "bottomOa":Landroid/animation/ObjectAnimator;
    new-instance v17, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$2;-><init>(Lnet/oneplus/h2launcher/AppWidgetResizeFrame;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 455
    .local v12, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 456
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    const/16 v18, 0x2

    aput-object v2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 463
    :goto_3
    const-wide/16 v18, 0x96

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 464
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 458
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 460
    :cond_4
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    const/16 v18, 0x3

    aput-object v13, v17, v18

    const/16 v18, 0x4

    aput-object v2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public updateDeltas(II)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 175
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 176
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 177
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 183
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 184
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 185
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 190
    :cond_1
    :goto_1
    return-void

    .line 178
    :cond_2
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 180
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 186
    :cond_3
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 188
    iget v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    .line 194
    return-void
.end method
