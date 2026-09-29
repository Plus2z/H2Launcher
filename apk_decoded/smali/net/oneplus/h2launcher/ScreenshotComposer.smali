.class public Lnet/oneplus/h2launcher/ScreenshotComposer;
.super Landroid/os/AsyncTask;
.source "ScreenshotComposer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

.field private final mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

.field private mDragLayerDrawingCache:Landroid/graphics/Bitmap;

.field private final mLauncherReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const-string v0, "Launcher"

    iput-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mLauncherReference:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    .line 36
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 37
    return-void
.end method

.method private screenshotCellLayout(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "cellLayout"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 154
    :cond_0
    const-string v20, "Launcher"

    const-string v21, "screenshot fails, invalid drawing cache"

    invoke-static/range {v20 .. v21}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v20, "Launcher"

    const-string v21, "cellLayout:%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    invoke-static/range {v20 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-eqz p1, :cond_1

    const-string v20, "Launcher"

    const-string v21, "cellLayout isRecycled:%b"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_1
    const/4 v5, 0x0

    .line 199
    :cond_2
    :goto_0
    return-object v5

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mLauncherReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 161
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_4

    .line 162
    const-string v20, "Launcher"

    const-string v21, "invalid parameter: Launcher"

    invoke-static/range {v20 .. v21}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v5, 0x0

    goto :goto_0

    .line 167
    :cond_4
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    const-string v20, "window"

    .line 169
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 170
    .local v18, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 171
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    iget v14, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 173
    .local v14, "screenWidth":I
    iget v13, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    .local v13, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0c002a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 176
    .local v17, "wallpaperPreviewWidth":F
    int-to-float v0, v14

    move/from16 v20, v0

    div-float v12, v17, v20

    .line 177
    .local v12, "scaleRatio":F
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .local v16, "w":I
    int-to-float v0, v13

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v8, v0

    .line 178
    .local v8, "h":I
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 181
    .local v5, "composite":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v8, v0

    .line 183
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 185
    .local v4, "cellCache":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0c0138

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 186
    .local v15, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v19

    .line 188
    .local v19, "workspacePadding":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v3, "canvas":Landroid/graphics/Canvas;
    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v11, v0

    .line 190
    .local v11, "paddingTop":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v10, v0

    .line 191
    .local v10, "paddingLeft":I
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private screenshotEntireScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "dragLayer"    # Landroid/graphics/Bitmap;
    .param p2, "cellLayout"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 102
    :cond_0
    const-string v13, "Launcher"

    const-string v14, "screenshot fails, invalid drawing cache"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v13, "Launcher"

    const-string v14, "dragLayer:%s, cellLayout:%s"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p1, :cond_1

    const-string v13, "Launcher"

    const-string v14, "dragLayer isRecycled:%b"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    const-string v13, "Launcher"

    const-string v14, "cellLayout isRecycled:%b"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_2
    const/4 v4, 0x0

    .line 149
    :cond_3
    :goto_0
    return-object v4

    .line 110
    :cond_4
    const/4 v5, 0x1

    .line 111
    .local v5, "filter":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0c002a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v11, v13

    .line 113
    .local v11, "wallpaperPreviewWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v8, v11, v13

    .line 115
    .local v8, "scaleRatio":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v10, v13

    .line 116
    .local v10, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v6, v13

    .line 117
    .local v6, "h":I
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v6, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 120
    .local v4, "composite":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v10, v13

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v6, v13

    .line 122
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10, v6, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    .local v2, "cellCache":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0c0138

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 128
    .local v9, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    invoke-static {v14}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v12

    .line 131
    .local v12, "workspacePadding":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .local v3, "cellRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    iget v13, v12, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    iput v13, v3, Landroid/graphics/Rect;->left:I

    .line 135
    iget v13, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v9

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    iput v13, v3, Landroid/graphics/Rect;->top:I

    .line 136
    iget v13, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    iput v13, v3, Landroid/graphics/Rect;->right:I

    .line 137
    iget v13, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    .line 138
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 141
    iget v13, v3, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 80
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->needCaptureEntireScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mDragLayerDrawingCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/ScreenshotComposer;->screenshotEntireScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/ScreenshotComposer;->screenshotCellLayout(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/ScreenshotComposer;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "cover"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    iget-object v3, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mLauncherReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mLauncherReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v2

    .line 92
    .local v2, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    if-eqz v2, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 94
    .local v0, "bb":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPreviewCover(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    .end local v0    # "bb":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    .end local v2    # "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/ScreenshotComposer;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 41
    iget-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mLauncherReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/Launcher;

    .line 42
    .local v5, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v5, :cond_0

    .line 43
    const-string v10, "Launcher"

    const-string v11, "invalid parameter: Launcher"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v10

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/oos/StyleManager;->needCaptureEntireScreen()Z

    move-result v6

    .line 50
    .local v6, "needCaptureEntireScreen":Z
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    .line 51
    .local v1, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragLayer;->getDrawingImage()Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    iput-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mDragLayerDrawingCache:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v7

    .line 55
    .local v7, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getHomeScreenPageIndex()I

    move-result v3

    .line 56
    .local v3, "homescreenIndex":I
    if-eqz v6, :cond_3

    .line 57
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 58
    .local v4, "index":I
    :goto_2
    invoke-virtual {v7, v4}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    .line 60
    .local v8, "screenId":J
    invoke-virtual {v7, v8, v9}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v10

    iput-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 61
    iget-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    .local v0, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    if-nez v0, :cond_4

    .line 62
    .end local v0    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    :cond_1
    const-string v10, "Launcher"

    const-string v11, "screenshot fails, invalid cell content: %s"

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    aput-object v13, v12, v14

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v3    # "homescreenIndex":I
    .end local v4    # "index":I
    .end local v7    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    .end local v8    # "screenId":J
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .restart local v3    # "homescreenIndex":I
    .restart local v7    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_3
    move v4, v3

    .line 57
    goto :goto_2

    .line 66
    .restart local v0    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .restart local v4    # "index":I
    .restart local v8    # "screenId":J
    :cond_4
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->buildDrawingCache()V

    .line 67
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    .local v2, "drawingCache":Landroid/graphics/Bitmap;
    if-nez v2, :cond_5

    .line 69
    const-string v10, "Launcher"

    const-string v11, "failed to get drawing cache: %s"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v14

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->destroyDrawingCache()V

    goto :goto_0

    .line 73
    :cond_5
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lnet/oneplus/h2launcher/ScreenshotComposer;->mCellLayoutDrawingCache:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->destroyDrawingCache()V

    goto :goto_0
.end method
