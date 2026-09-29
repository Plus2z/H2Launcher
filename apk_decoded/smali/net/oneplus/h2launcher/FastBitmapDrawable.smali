.class public Lnet/oneplus/h2launcher/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field static final CLICK_FEEDBACK_DURATION:J = 0xc8L

.field static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final GHOST_MODE_MIN_COLOR_RANGE:I = 0x82

.field private static final PRESSED_BRIGHTNESS:I = 0x1e

.field private static final sCachedBrightnessFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sGhostModeMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field protected final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mGhostModeEnabled:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lnet/oneplus/h2launcher/FastBitmapDrawable$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 54
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    iput v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    .line 70
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 72
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressed:Z

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mAlpha:I

    .line 77
    iput-object p1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 79
    return-void
.end method

.method private static setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V
    .locals 5
    .param p0, "matrix"    # Landroid/graphics/ColorMatrix;
    .param p1, "brightness"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 224
    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float v1, v4, v2

    .line 225
    .local v1, "scale":F
    invoke-virtual {p0, v1, v1, v1, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 226
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 231
    .local v0, "array":[F
    const/4 v2, 0x4

    int-to-float v3, p1

    aput v3, v0, v2

    .line 232
    const/16 v2, 0x9

    int-to-float v3, p1

    aput v3, v0, v2

    .line 233
    const/16 v2, 0xe

    int-to-float v3, p1

    aput v3, v0, v2

    .line 234
    return-void
.end method

.method private updateFilter()V
    .locals 7

    .prologue
    const/16 v4, 0xff

    const/high16 v5, 0x43020000    # 130.0f

    const/4 v6, 0x0

    .line 187
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eqz v2, :cond_2

    .line 188
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    .line 190
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 193
    const v1, 0x3efafafb

    .line 194
    .local v1, "range":F
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x10

    aput v6, v3, v4

    const/16 v4, 0x11

    aput v6, v3, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 199
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 202
    .end local v1    # "range":F
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 220
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    iget v3, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V

    .line 206
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 207
    iget-object v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 209
    :cond_2
    iget v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    if-eqz v2, :cond_4

    .line 210
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    .line 211
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-nez v0, :cond_3

    .line 212
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    iget v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 214
    .restart local v0    # "filter":Landroid/graphics/ColorFilter;
    sget-object v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 218
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_4
    iget-object v2, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x3

    return v0
.end method

.method public isGhostModeEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mGhostModeEnabled:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressed:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 100
    iput p1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mAlpha:I

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 179
    iget v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mBrightness:I

    .line 181
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->updateFilter()V

    .line 182
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->invalidateSelf()V

    .line 184
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 91
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    return-void
.end method

.method public setGhostModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 144
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 145
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->updateFilter()V

    .line 147
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressed:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressed:Z

    .line 152
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressed:Z

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "brightness"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x1e

    aput v2, v1, v3

    .line 154
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lnet/oneplus/h2launcher/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->invalidateSelf()V

    .line 164
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 160
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    goto :goto_0
.end method
