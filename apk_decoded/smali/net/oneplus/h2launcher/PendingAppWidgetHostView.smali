.class public Lnet/oneplus/h2launcher/PendingAppWidgetHostView;
.super Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_SATUNATION:F = 0.7f

.field private static final SETUP_ICON_SIZE_FACTOR:F = 0.4f

.field private static sPreloaderTheme:Landroid/content/res/Resources$Theme;


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconLookupIntent:Landroid/content/Intent;

.field private final mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .param p3, "disabledForSafeMode"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 68
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 69
    iput-object p2, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 70
    iget v0, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mStartState:I

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    .line 72
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 74
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 77
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 76
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 78
    const v0, 0x7f0201a1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 81
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->setElevation(F)V

    .line 84
    :cond_0
    return-void
.end method

.method private updateDrawableBounds()V
    .locals 26

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v12

    .line 199
    .local v12, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v22

    .line 200
    .local v22, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v19

    .line 201
    .local v19, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v20

    .line 202
    .local v20, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v21

    .line 204
    .local v21, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ce

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 207
    .local v17, "minPadding":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int v2, v2, v20

    sub-int v2, v2, v21

    mul-int/lit8 v3, v17, 0x2

    sub-int v5, v2, v3

    .line 208
    .local v5, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v22

    sub-int v2, v2, v19

    mul-int/lit8 v3, v17, 0x2

    sub-int v11, v2, v3

    .line 210
    .local v11, "availableHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    .line 212
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->getOutset()I

    move-result v18

    .line 213
    .local v18, "outset":I
    :goto_0
    iget v2, v12, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    mul-int/lit8 v3, v18, 0x2

    add-int v15, v2, v3

    .line 214
    .local v15, "maxSize":I
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 216
    .local v24, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v24

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 272
    .end local v18    # "outset":I
    .end local v24    # "size":I
    :cond_0
    :goto_1
    return-void

    .line 212
    .end local v15    # "maxSize":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 221
    :cond_2
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v13, v2

    .line 225
    .local v13, "iconSize":F
    const v23, 0x3fe66666    # 1.8f

    .line 226
    .local v23, "settingIconScaleFactor":F
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 227
    .restart local v15    # "maxSize":I
    mul-float v2, v13, v23

    int-to-float v3, v15

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 229
    int-to-float v2, v15

    div-float v13, v2, v23

    .line 232
    :cond_3
    iget v2, v12, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v10, v2

    .line 235
    .local v10, "actualIconSize":I
    new-instance v2, Landroid/text/StaticLayout;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v25

    .line 241
    .local v25, "textHeight":I
    move/from16 v0, v25

    int-to-float v2, v0

    int-to-float v3, v10

    mul-float v3, v3, v23

    add-float/2addr v2, v3

    iget v3, v12, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v3, v3

    add-float v16, v2, v3

    .line 245
    .local v16, "minHeightWithText":F
    int-to-float v2, v11

    cmpg-float v2, v16, v2

    if-gez v2, :cond_4

    .line 247
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v25

    iget v3, v12, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    div-int/lit8 v14, v2, 0x2

    .line 256
    .local v14, "iconTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v10

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v20, v17

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const v4, 0x3ecccccd    # 0.4f

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v22, v17

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const v4, 0x3ecccccd    # 0.4f

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v20, v17

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 252
    .end local v14    # "iconTop":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    div-int/lit8 v14, v2, 0x2

    .line 253
    .restart local v14    # "iconTop":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    goto/16 :goto_2
.end method

.method private updateSettingColor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-object v2, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 163
    .local v0, "color":I
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 164
    .local v1, "hsv":[F
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 165
    aget v2, v1, v4

    const v3, 0x3f333333    # 0.7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v4

    .line 166
    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 167
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 169
    iget-object v2, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 170
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 181
    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->applyState()V

    .line 99
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 276
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_2

    .line 282
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->updateDrawableBounds()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 286
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 292
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 117
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 90
    return-void
.end method

.method public updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 7
    .param p1, "cache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iget-object v4, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p1, v3, v4}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v3, v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-object v2, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    .line 125
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    iput-object v5, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 134
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    .line 136
    .local v0, "disabledIcon":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 137
    iput-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object v5, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    .end local v0    # "disabledIcon":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    :goto_1
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    new-instance v3, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lnet/oneplus/h2launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02011d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->updateSettingColor()V

    goto :goto_1

    .line 145
    :cond_4
    sget-object v3, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    if-nez v3, :cond_5

    .line 146
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sput-object v3, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    .line 147
    sget-object v3, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    const v4, 0x7f0a02a2

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 150
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 151
    .local v1, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    new-instance v3, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    sget-object v4, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    invoke-direct {v3, v1, v4}, Lnet/oneplus/h2launcher/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object v3, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    iput-object v5, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->applyState()V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
