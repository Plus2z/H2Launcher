.class public Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;
.super Ljava/lang/Object;
.source "BitmapBlur.java"


# static fields
.field static final MAX_RADIUS_STAGE_BLUR:F = 175.0f

.field static final MAX_STAGE_RADIUS:F = 25.0f

.field private static mBitmapBlur25:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_2:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_3:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_4:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_5:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_6:Landroid/graphics/Bitmap;

.field private static mBitmapBlur25_7:Landroid/graphics/Bitmap;

.field private static mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private static mRenderScript:Landroid/renderscript/RenderScript;

.field private static mResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

.field private static sMinRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x3d4ccccd    # 0.05f

    sput v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->sMinRadius:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCacheBitmap()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25:Landroid/graphics/Bitmap;

    .line 126
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_2:Landroid/graphics/Bitmap;

    .line 127
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_3:Landroid/graphics/Bitmap;

    .line 128
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_4:Landroid/graphics/Bitmap;

    .line 129
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_5:Landroid/graphics/Bitmap;

    .line 130
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_6:Landroid/graphics/Bitmap;

    .line 131
    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_7:Landroid/graphics/Bitmap;

    .line 132
    return-void
.end method

.method private static createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "exStageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    sget-object v3, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v3, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 140
    .local v0, "imageAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 142
    .local v2, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 145
    .local v1, "imageBlurAllocation":Landroid/renderscript/Allocation;
    sget-object v3, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 146
    sget-object v3, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 147
    sget-object v3, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 152
    return-object v2
.end method

.method public static createCacheBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "num"    # I

    .prologue
    .line 100
    invoke-static {p0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->initRenderScript(Landroid/content/Context;)V

    .line 101
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 102
    invoke-static {p1}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_2:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 105
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_2:Landroid/graphics/Bitmap;

    .line 107
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_3:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    .line 108
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_2:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_3:Landroid/graphics/Bitmap;

    .line 110
    :cond_2
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_4:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    .line 111
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_3:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_4:Landroid/graphics/Bitmap;

    .line 113
    :cond_3
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_5:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v0, 0x4

    if-le p2, v0, :cond_4

    .line 114
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_4:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_5:Landroid/graphics/Bitmap;

    .line 116
    :cond_4
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_6:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    const/4 v0, 0x5

    if-le p2, v0, :cond_5

    .line 117
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_5:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_6:Landroid/graphics/Bitmap;

    .line 119
    :cond_5
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_7:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x6

    if-le p2, v0, :cond_6

    .line 120
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_6:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_7:Landroid/graphics/Bitmap;

    .line 122
    :cond_6
    return-void
.end method

.method private static getBitmapBlur25_X(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F

    .prologue
    .line 73
    const/high16 v1, 0x41c80000    # 25.0f

    div-float v1, p2, v1

    float-to-int v0, v1

    .line 75
    .local v0, "nIndex":I
    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 96
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_0
    :pswitch_0
    return-object p1

    .line 81
    .restart local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 83
    :pswitch_2
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_2:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    :pswitch_3
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_3:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 87
    :pswitch_4
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_4:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 89
    :pswitch_5
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_5:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 91
    :pswitch_6
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_6:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 93
    :pswitch_7
    sget-object p1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBitmapBlur25_7:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getRemainRadius(F)F
    .locals 2
    .param p0, "radius"    # F

    .prologue
    .line 156
    const/high16 v1, 0x41c80000    # 25.0f

    rem-float v0, p0, v1

    .line 157
    .local v0, "remainRadius":F
    return v0
.end method

.method private static initRenderScript(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 191
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 193
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v0, :cond_1

    .line 194
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 195
    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 197
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    if-nez v0, :cond_2

    .line 198
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 200
    :cond_2
    return-void
.end method

.method public static reSizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleSize"    # F

    .prologue
    .line 162
    invoke-static {p0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->initRenderScript(Landroid/content/Context;)V

    .line 164
    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 167
    .local v1, "imageAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v4, v6

    .line 168
    .local v4, "resizeWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v3, v6

    .line 169
    .local v3, "resizeHeight":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 173
    .local v2, "outputBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/renderscript/Type$Builder;

    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v7, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 174
    invoke-static {v7}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 175
    .local v5, "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v5, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 176
    invoke-virtual {v5, v3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 177
    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 178
    invoke-virtual {v5}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    const/4 v8, 0x1

    .line 177
    invoke-static {v6, v7, v8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 181
    .local v0, "frameResizeAllocation":Landroid/renderscript/Allocation;
    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v6, v1}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 182
    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v6, v0}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 186
    return-object v2
.end method

.method public static stageBlur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcImage"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-static {p0}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->initRenderScript(Landroid/content/Context;)V

    .line 37
    cmpg-float v5, p2, v6

    if-gtz v5, :cond_1

    .line 38
    sget p2, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->sMinRadius:F

    .line 45
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->getBitmapBlur25_X(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 47
    .local v4, "tmpBitmap":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->getRemainRadius(F)F

    move-result v3

    .line 48
    .local v3, "remainRadius":F
    cmpl-float v5, v3, v6

    if-nez v5, :cond_2

    .line 69
    .end local v4    # "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 39
    .end local v3    # "remainRadius":F
    :cond_1
    const/high16 v5, 0x432f0000    # 175.0f

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    .line 40
    const/high16 p2, 0x432f0000    # 175.0f

    goto :goto_0

    .line 53
    .restart local v3    # "remainRadius":F
    .restart local v4    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v5, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 56
    .local v0, "imageAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 58
    .local v2, "outputBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v5, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 61
    .local v1, "imageBlurAllocation":Landroid/renderscript/Allocation;
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 62
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 63
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v5, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    move-object v4, v2

    .line 69
    goto :goto_1
.end method
