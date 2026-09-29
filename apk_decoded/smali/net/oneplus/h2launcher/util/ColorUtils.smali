.class public final Lnet/oneplus/h2launcher/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lnet/oneplus/h2launcher/util/ColorUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/ColorUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isColorDifferencePerceptible(II)Z
    .locals 11
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 42
    new-array v4, v8, [F

    .local v4, "labColor1":[F
    new-array v5, v8, [F

    .line 43
    .local v5, "labColor2":[F
    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/util/ColorUtils;->rgbToLab(I[F)V

    .line 44
    invoke-static {p1, v5}, Lnet/oneplus/h2launcher/util/ColorUtils;->rgbToLab(I[F)V

    .line 45
    aget v8, v4, v7

    aget v9, v5, v7

    sub-float v0, v8, v9

    .line 46
    .local v0, "dL":F
    aget v8, v4, v6

    aget v9, v5, v6

    sub-float v1, v8, v9

    .line 47
    .local v1, "da":F
    aget v8, v4, v10

    aget v9, v5, v10

    sub-float v2, v8, v9

    .line 48
    .local v2, "db":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 49
    .local v3, "deltaE":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private static rgbToLab(I[F)V
    .locals 22
    .param p0, "color"    # I
    .param p1, "lab"    # [F

    .prologue
    .line 62
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v13, v17, v18

    .line 63
    .local v13, "r":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v12, v17, v18

    .line 64
    .local v12, "g":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v8, v17, v18

    .line 67
    .local v8, "b":F
    const v17, 0x3d25aee6    # 0.04045f

    cmpg-float v17, v13, v17

    if-gtz v17, :cond_0

    .line 68
    const v17, 0x414eb852    # 12.92f

    div-float v13, v13, v17

    .line 72
    :goto_0
    const v17, 0x3d25aee6    # 0.04045f

    cmpg-float v17, v12, v17

    if-gtz v17, :cond_1

    .line 73
    const v17, 0x414eb852    # 12.92f

    div-float v12, v12, v17

    .line 77
    :goto_1
    const v17, 0x3d25aee6    # 0.04045f

    cmpg-float v17, v8, v17

    if-gtz v17, :cond_2

    .line 78
    const v17, 0x414eb852    # 12.92f

    div-float v8, v8, v17

    .line 82
    :goto_2
    const v17, 0x3ed32618    # 0.4124f

    mul-float v17, v17, v13

    const v18, 0x3eb71759    # 0.3576f

    mul-float v18, v18, v12

    add-float v17, v17, v18

    const v18, 0x3e38d4fe    # 0.1805f

    mul-float v18, v18, v8

    add-float v2, v17, v18

    .line 83
    .local v2, "X":F
    const v17, 0x3e59b3d0    # 0.2126f

    mul-float v17, v17, v13

    const v18, 0x3f371759    # 0.7152f

    mul-float v18, v18, v12

    add-float v17, v17, v18

    const v18, 0x3d93dd98    # 0.0722f

    mul-float v18, v18, v8

    add-float v4, v17, v18

    .line 84
    .local v4, "Y":F
    const v17, 0x3c9e1b09    # 0.0193f

    mul-float v17, v17, v13

    const v18, 0x3df41f21    # 0.1192f

    mul-float v18, v18, v12

    add-float v17, v17, v18

    const v18, 0x3f7353f8    # 0.9505f

    mul-float v18, v18, v8

    add-float v6, v17, v18

    .line 87
    .local v6, "Z":F
    const v3, 0x3f735200

    .line 88
    .local v3, "Xn":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 89
    .local v5, "Yn":F
    const v7, 0x3f8b5ec8    # 1.08883f

    .line 92
    .local v7, "Zn":F
    div-float v14, v2, v3

    .line 93
    .local v14, "xr":F
    div-float v15, v4, v5

    .line 94
    .local v15, "yr":F
    div-float v16, v6, v7

    .line 96
    .local v16, "zr":F
    const v17, 0x3c1118c2    # 0.008856f

    cmpl-float v17, v14, v17

    if-lez v17, :cond_3

    .line 97
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 101
    .local v9, "fx":F
    :goto_3
    const v17, 0x3c1118c2    # 0.008856f

    cmpl-float v17, v15, v17

    if-lez v17, :cond_4

    .line 102
    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 106
    .local v10, "fy":F
    :goto_4
    const v17, 0x3c1118c2    # 0.008856f

    cmpl-float v17, v16, v17

    if-lez v17, :cond_5

    .line 107
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 111
    .local v11, "fz":F
    :goto_5
    const/16 v17, 0x0

    const/high16 v18, 0x42e80000    # 116.0f

    mul-float v18, v18, v10

    const/high16 v19, 0x41800000    # 16.0f

    sub-float v18, v18, v19

    aput v18, p1, v17

    .line 112
    const/16 v17, 0x1

    const/high16 v18, 0x43fa0000    # 500.0f

    sub-float v19, v9, v10

    mul-float v18, v18, v19

    aput v18, p1, v17

    .line 113
    const/16 v17, 0x2

    const/high16 v18, 0x43480000    # 200.0f

    sub-float v19, v10, v11

    mul-float v18, v18, v19

    aput v18, p1, v17

    .line 114
    return-void

    .line 70
    .end local v2    # "X":F
    .end local v3    # "Xn":F
    .end local v4    # "Y":F
    .end local v5    # "Yn":F
    .end local v6    # "Z":F
    .end local v7    # "Zn":F
    .end local v9    # "fx":F
    .end local v10    # "fy":F
    .end local v11    # "fz":F
    .end local v14    # "xr":F
    .end local v15    # "yr":F
    .end local v16    # "zr":F
    :cond_0
    const v17, 0x3d6147ae    # 0.055f

    add-float v17, v17, v13

    const v18, 0x3f870a3d    # 1.055f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x4003333340000000L    # 2.4000000953674316

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    goto/16 :goto_0

    .line 75
    :cond_1
    const v17, 0x3d6147ae    # 0.055f

    add-float v17, v17, v12

    const v18, 0x3f870a3d    # 1.055f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x4003333340000000L    # 2.4000000953674316

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    goto/16 :goto_1

    .line 80
    :cond_2
    const v17, 0x3d6147ae    # 0.055f

    add-float v17, v17, v8

    const v18, 0x3f870a3d    # 1.055f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x4003333340000000L    # 2.4000000953674316

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    goto/16 :goto_2

    .line 99
    .restart local v2    # "X":F
    .restart local v3    # "Xn":F
    .restart local v4    # "Y":F
    .restart local v5    # "Yn":F
    .restart local v6    # "Z":F
    .restart local v7    # "Zn":F
    .restart local v14    # "xr":F
    .restart local v15    # "yr":F
    .restart local v16    # "zr":F
    :cond_3
    const v17, 0x40f92f1b    # 7.787f

    mul-float v17, v17, v14

    const v18, 0x3e0d3dcb

    add-float v9, v17, v18

    .restart local v9    # "fx":F
    goto/16 :goto_3

    .line 104
    :cond_4
    const v17, 0x40f92f1b    # 7.787f

    mul-float v17, v17, v15

    const v18, 0x3e0d3dcb

    add-float v10, v17, v18

    .restart local v10    # "fy":F
    goto/16 :goto_4

    .line 109
    :cond_5
    const v17, 0x40f92f1b    # 7.787f

    mul-float v17, v17, v16

    const v18, 0x3e0d3dcb

    add-float v11, v17, v18

    .restart local v11    # "fz":F
    goto/16 :goto_5
.end method
