.class public Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;
.super Ljava/lang/Object;
.source "DynamicIconUtil.java"


# static fields
.field private static final DEFAULT_TEXT_DP:I = 0xc

.field public static sDpPixel:F

.field public static sSpPixel:F

.field public static sTextSizeDefault:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompleteBitmap(Lnet/oneplus/h2launcher/FastBitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fastBitmapDrawable"    # Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .prologue
    .line 29
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 30
    .local v2, "sourceBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 36
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 22
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sDpPixel:F

    .line 24
    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sSpPixel:F

    .line 25
    sget v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sDpPixel:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    sput v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sTextSizeDefault:F

    .line 26
    return-void
.end method
