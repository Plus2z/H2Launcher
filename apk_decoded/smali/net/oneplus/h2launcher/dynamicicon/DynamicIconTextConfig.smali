.class public Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;
.super Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
.source "DynamicIconTextConfig.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final DEFAULT_SHADOW_COLOR:I = -0x1000000

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final KEY_ALIGN_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final KEY_ALIGN_CENTER:Ljava/lang/String; = "center"

.field public static final KEY_ALIGN_LEFT:Ljava/lang/String; = "left"

.field public static final KEY_ALIGN_RIGHT:Ljava/lang/String; = "right"

.field public static final KEY_ALIGN_TOP:Ljava/lang/String; = "top"

.field public static final KEY_ALIGN_X:Ljava/lang/String; = "alignX"

.field public static final KEY_ALIGN_Y:Ljava/lang/String; = "alignY"

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_DP:Ljava/lang/String; = "dp"

.field public static final KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_FALSE:Ljava/lang/String; = "false"

.field public static final KEY_FONT:Ljava/lang/String; = "font"

.field public static final KEY_FONT_TYPE_FACE:Ljava/lang/String; = "font_typeface"

.field public static final KEY_OFFSET_X:Ljava/lang/String; = "offsetX"

.field public static final KEY_OFFSET_Y:Ljava/lang/String; = "offsetY"

.field public static final KEY_PX:Ljava/lang/String; = "px"

.field public static final KEY_SHADOW_LAYER_ALPHA:Ljava/lang/String; = "shadowLayerAlpha"

.field public static final KEY_SHADOW_LAYER_COLOR:Ljava/lang/String; = "shadowLayerColor"

.field public static final KEY_SHADOW_LAYER_RADIUS:Ljava/lang/String; = "shadowLayerRadius"

.field public static final KEY_SHADOW_LAYER_X:Ljava/lang/String; = "shadowLayerX"

.field public static final KEY_SHADOW_LAYER_Y:Ljava/lang/String; = "shadowLayerY"

.field public static final KEY_SP:Ljava/lang/String; = "sp"

.field public static final KEY_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field public static final KEY_TRUE:Ljava/lang/String; = "true"

.field public static final KEY_TYPEFACE_BOLD:Ljava/lang/String; = "BOLD"

.field public static final KEY_TYPEFACE_BOLD_ITALIC:Ljava/lang/String; = "BOLD_ITALIC"

.field public static final KEY_TYPEFACE_ITALIC:Ljava/lang/String; = "ITALIC"

.field public static final KEY_TYPEFACE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field protected mAlignX:I

.field protected mAlignY:I

.field protected mEnable:Z

.field protected mFont:Ljava/lang/String;

.field protected mFontTypeFace:Ljava/lang/String;

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected mShadowLayerAlpha:F

.field protected mShadowLayerColor:I

.field protected mShadowLayerRadius:F

.field protected mShadowLayerX:F

.field protected mShadowLayerY:F

.field protected mTextColor:I

.field protected mTextSize:F

.field protected mTypeFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private parseAlignX(Ljava/lang/String;)V
    .locals 1
    .param p1, "alignX"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignX:I

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignX:I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignX:I

    goto :goto_0
.end method

.method private parseAlignY(Ljava/lang/String;)V
    .locals 1
    .param p1, "alignY"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x3

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignY:I

    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignY:I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v0, "bottom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignY:I

    goto :goto_0
.end method

.method private parseDimen(Ljava/lang/String;)F
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "result":F
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 209
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "unit":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 212
    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    sget v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sDpPixel:F

    mul-float/2addr v1, v3

    .line 218
    .end local v0    # "number":Ljava/lang/String;
    .end local v2    # "unit":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 214
    .restart local v0    # "number":Ljava/lang/String;
    .restart local v2    # "unit":Ljava/lang/String;
    :cond_1
    const-string v3, "sp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    sget v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sSpPixel:F

    mul-float/2addr v1, v3

    goto :goto_0
.end method

.method private parseEnable(Ljava/lang/String;)V
    .locals 1
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mEnable:Z

    .line 152
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mEnable:Z

    .line 155
    :cond_0
    return-void
.end method

.method private parseOffsetX(Ljava/lang/String;)V
    .locals 4
    .param p1, "offestX"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mOffsetX:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse OffsetX error exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseOffsetY(Ljava/lang/String;)V
    .locals 4
    .param p1, "offestY"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mOffsetY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse OffsetY error exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseShadowLayerColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "alpha"    # Ljava/lang/String;

    .prologue
    const/high16 v6, -0x1000000

    .line 282
    if-eqz p1, :cond_1

    .line 283
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    .line 287
    :goto_0
    if-eqz p2, :cond_0

    .line 288
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 289
    .local v1, "f":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 290
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 291
    .local v2, "number":I
    iget v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    .line 292
    iget v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    shl-int/lit8 v4, v2, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    .line 299
    .end local v1    # "f":F
    .end local v2    # "number":I
    :cond_0
    :goto_1
    return-void

    .line 285
    :cond_1
    const/high16 v3, -0x1000000

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse parseShadowLayerColor error, color ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", alpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput v6, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    goto :goto_1
.end method

.method private parseShadowLayerRadius(Ljava/lang/String;)V
    .locals 4
    .param p1, "shadowLayerRadius"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerRadius:F

    .line 274
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerRadius:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse parseShadowLayerRadius error, shadowLayerRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseShadowLayerX(Ljava/lang/String;)V
    .locals 4
    .param p1, "shadowLayerX"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerX:F

    .line 256
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerX:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse parseShadowLayerX error, shadowLayerX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseShadowLayerY(Ljava/lang/String;)V
    .locals 4
    .param p1, "shadowLayerY"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerY:F

    .line 265
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse parseShadowLayerY error, shadowLayerY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseTextColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextColor:I

    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse parseTextColor error, color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseTextSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "textSize"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseDimen(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextSize:F

    .line 198
    iget v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 199
    sget v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->sTextSizeDefault:F

    iput v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextSize:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse textSize error exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseTypeFace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "font"    # Ljava/lang/String;
    .param p2, "typeface"    # Ljava/lang/String;

    .prologue
    .line 223
    :try_start_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTypeFace:Landroid/graphics/Typeface;

    .line 224
    if-eqz p1, :cond_1

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "type":I
    if-eqz p2, :cond_0

    .line 227
    const-string v2, "BOLD"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    const/4 v1, 0x1

    .line 235
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTypeFace:Landroid/graphics/Typeface;

    .line 240
    .end local v1    # "type":I
    :cond_1
    :goto_1
    return-void

    .line 229
    .restart local v1    # "type":I
    :cond_2
    const-string v2, "BOLD_ITALIC"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    const/4 v1, 0x3

    goto :goto_0

    .line 231
    :cond_3
    const-string v2, "ITALIC"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v1, 0x2

    goto :goto_0

    .line 237
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse parseTypeFace error, font = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", typeFace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getAlignX()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignX:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mAlignY:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mOffsetY:F

    return v0
.end method

.method public getShadowLayerColor()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerColor:I

    return v0
.end method

.method public getShadowLayerRadius()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerRadius:F

    return v0
.end method

.method public getShadowLayerX()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerX:F

    return v0
.end method

.method public getShadowLayerY()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mShadowLayerY:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTextSize:F

    return v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->mEnable:Z

    return v0
.end method

.method protected parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 126
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 127
    .local v1, "eventType":I
    const/4 v3, 0x0

    const-string v4, "key"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->setKey(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    const-string v4, "enable"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseEnable(Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x0

    const-string v4, "alignX"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseAlignX(Ljava/lang/String;)V

    .line 131
    const/4 v3, 0x0

    const-string v4, "alignY"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseAlignY(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    const-string v4, "offsetX"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseOffsetX(Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x0

    const-string v4, "offsetY"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseOffsetY(Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x0

    const-string v4, "textSize"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseTextSize(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x0

    const-string v4, "font"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "font_typeface"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseTypeFace(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x0

    const-string v4, "color"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseTextColor(Ljava/lang/String;)V

    .line 137
    const/4 v3, 0x0

    const-string v4, "shadowLayerX"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseShadowLayerX(Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x0

    const-string v4, "shadowLayerY"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseShadowLayerY(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x0

    const-string v4, "shadowLayerRadius"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseShadowLayerRadius(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    const-string v4, "shadowLayerColor"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "shadowLayerAlpha"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->parseShadowLayerColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v1    # "eventType":I
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse DynamicIcon drawable config xml error, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse DynamicIcon drawable config io error, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
