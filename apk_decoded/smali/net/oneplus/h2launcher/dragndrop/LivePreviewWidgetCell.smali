.class public Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;
.super Lnet/oneplus/h2launcher/widget/WidgetCell;
.source "LivePreviewWidgetCell.java"


# instance fields
.field private mPreview:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static generateFromRemoteViews(Lnet/oneplus/h2launcher/Launcher;Landroid/widget/RemoteViews;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p3, "previewSize"    # I
    .param p4, "preScaledWidthOut"    # [I

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v3

    .line 63
    .local v3, "dp":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v10, v3, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    iget v11, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    mul-int v9, v10, v11

    .line 64
    .local v9, "viewWidth":I
    iget v10, v3, Lnet/oneplus/h2launcher/DeviceProfile;->cellHeightPx:I

    iget v11, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    mul-int v8, v10, v11

    .line 68
    .local v8, "viewHeight":I
    :try_start_0
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v10}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 69
    .local v7, "v":Landroid/view/View;
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    .line 70
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 69
    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    .line 72
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 73
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 74
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v9, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v10, 0x0

    aput v9, p4, v10

    .line 82
    if-le v9, p3, :cond_0

    .line 83
    int-to-float v10, p3

    int-to-float v11, v9

    div-float v6, v10, v11

    .line 84
    .local v6, "scale":F
    move v1, p3

    .line 85
    .local v1, "bitmapWidth":I
    int-to-float v10, v8

    mul-float/2addr v10, v6

    float-to-int v0, v10

    .line 92
    .local v0, "bitmapHeight":I
    :goto_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 93
    .local v5, "preview":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 95
    invoke-virtual {v7, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 96
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    .end local v6    # "scale":F
    .end local v7    # "v":Landroid/view/View;
    :goto_1
    return-object v5

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "v":Landroid/view/View;
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    .restart local v6    # "scale":F
    move v1, v9

    .line 89
    .restart local v1    # "bitmapWidth":I
    move v0, v8

    .restart local v0    # "bitmapHeight":I
    goto :goto_0
.end method


# virtual methods
.method public ensurePreview()V
    .locals 6

    .prologue
    .line 42
    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v3, v3, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v4, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mPresetPreviewSize:I

    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-static {v1, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->generateFromRemoteViews(Lnet/oneplus/h2launcher/Launcher;Landroid/widget/RemoteViews;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "preview":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->applyPreview(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    .line 51
    .end local v0    # "preview":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->ensurePreview()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public setPreview(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    .line 38
    return-void
.end method
